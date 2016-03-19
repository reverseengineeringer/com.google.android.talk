.class public final Lkdx;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Lkdx;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Ljava/lang/Integer;

.field public b:[Lkcb;

.field public c:Ljzl;

.field public d:Ljxr;

.field public e:Ljava/lang/Long;

.field public f:Ljava/lang/String;

.field public g:[B

.field public responseHeader:Lkdp;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 7485
    invoke-direct {p0}, Llyb;-><init>()V

    .line 8490
    iput-object v1, p0, Lkdx;->responseHeader:Lkdp;

    .line 8491
    iput-object v1, p0, Lkdx;->a:Ljava/lang/Integer;

    .line 8492
    invoke-static {}, Lkcb;->d()[Lkcb;

    move-result-object v0

    iput-object v0, p0, Lkdx;->b:[Lkcb;

    .line 8493
    iput-object v1, p0, Lkdx;->c:Ljzl;

    .line 8494
    iput-object v1, p0, Lkdx;->d:Ljxr;

    .line 8495
    iput-object v1, p0, Lkdx;->e:Ljava/lang/Long;

    .line 8496
    iput-object v1, p0, Lkdx;->f:Ljava/lang/String;

    .line 8497
    iput-object v1, p0, Lkdx;->g:[B

    .line 8498
    iput-object v1, p0, Lkdx;->eD:Llyd;

    .line 8499
    const/4 v0, -0x1

    iput v0, p0, Lkdx;->eE:I

    .line 7487
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 8586
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 8587
    sparse-switch v0, :sswitch_data_0

    .line 8591
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 8592
    :sswitch_0
    return-object p0

    .line 8597
    :sswitch_1
    iget-object v0, p0, Lkdx;->responseHeader:Lkdp;

    if-nez v0, :cond_1

    .line 8598
    new-instance v0, Lkdp;

    invoke-direct {v0}, Lkdp;-><init>()V

    iput-object v0, p0, Lkdx;->responseHeader:Lkdp;

    .line 8600
    :cond_1
    iget-object v0, p0, Lkdx;->responseHeader:Lkdp;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 8604
    :sswitch_2
    invoke-virtual {p1}, Llxy;->d()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lkdx;->e:Ljava/lang/Long;

    goto :goto_0

    .line 8608
    :sswitch_3
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lkdx;->f:Ljava/lang/String;

    goto :goto_0

    .line 8612
    :sswitch_4
    const/16 v0, 0x22

    .line 8613
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v2

    .line 8614
    iget-object v0, p0, Lkdx;->b:[Lkcb;

    if-nez v0, :cond_3

    move v0, v1

    .line 8615
    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Lkcb;

    .line 8617
    if-eqz v0, :cond_2

    .line 8618
    iget-object v3, p0, Lkdx;->b:[Lkcb;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 8620
    :cond_2
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_4

    .line 8621
    new-instance v3, Lkcb;

    invoke-direct {v3}, Lkcb;-><init>()V

    aput-object v3, v2, v0

    .line 8622
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Llxy;->a(Llyi;)V

    .line 8623
    invoke-virtual {p1}, Llxy;->a()I

    .line 8620
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 8614
    :cond_3
    iget-object v0, p0, Lkdx;->b:[Lkcb;

    array-length v0, v0

    goto :goto_1

    .line 8626
    :cond_4
    new-instance v3, Lkcb;

    invoke-direct {v3}, Lkcb;-><init>()V

    aput-object v3, v2, v0

    .line 8627
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    .line 8628
    iput-object v2, p0, Lkdx;->b:[Lkcb;

    goto :goto_0

    .line 8632
    :sswitch_5
    invoke-virtual {p1}, Llxy;->k()[B

    move-result-object v0

    iput-object v0, p0, Lkdx;->g:[B

    goto :goto_0

    .line 8636
    :sswitch_6
    iget-object v0, p0, Lkdx;->c:Ljzl;

    if-nez v0, :cond_5

    .line 8637
    new-instance v0, Ljzl;

    invoke-direct {v0}, Ljzl;-><init>()V

    iput-object v0, p0, Lkdx;->c:Ljzl;

    .line 8639
    :cond_5
    iget-object v0, p0, Lkdx;->c:Ljzl;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto/16 :goto_0

    .line 8643
    :sswitch_7
    iget-object v0, p0, Lkdx;->d:Ljxr;

    if-nez v0, :cond_6

    .line 8644
    new-instance v0, Ljxr;

    invoke-direct {v0}, Ljxr;-><init>()V

    iput-object v0, p0, Lkdx;->d:Ljxr;

    .line 8646
    :cond_6
    iget-object v0, p0, Lkdx;->d:Ljxr;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto/16 :goto_0

    .line 8650
    :sswitch_8
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    .line 8651
    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    .line 8661
    :pswitch_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lkdx;->a:Ljava/lang/Integer;

    goto/16 :goto_0

    .line 8587
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x10 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
        0x2a -> :sswitch_5
        0x32 -> :sswitch_6
        0x3a -> :sswitch_7
        0x40 -> :sswitch_8
    .end sparse-switch

    .line 8651
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public a(Llxz;)V
    .locals 4

    .prologue
    .line 7506
    iget-object v0, p0, Lkdx;->responseHeader:Lkdp;

    if-eqz v0, :cond_0

    .line 7507
    const/4 v0, 0x1

    iget-object v1, p0, Lkdx;->responseHeader:Lkdp;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 7509
    :cond_0
    iget-object v0, p0, Lkdx;->e:Ljava/lang/Long;

    if-eqz v0, :cond_1

    .line 7510
    const/4 v0, 0x2

    iget-object v1, p0, Lkdx;->e:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Llxz;->a(IJ)V

    .line 7512
    :cond_1
    iget-object v0, p0, Lkdx;->f:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 7513
    const/4 v0, 0x3

    iget-object v1, p0, Lkdx;->f:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 7515
    :cond_2
    iget-object v0, p0, Lkdx;->b:[Lkcb;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lkdx;->b:[Lkcb;

    array-length v0, v0

    if-lez v0, :cond_4

    .line 7516
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lkdx;->b:[Lkcb;

    array-length v1, v1

    if-ge v0, v1, :cond_4

    .line 7517
    iget-object v1, p0, Lkdx;->b:[Lkcb;

    aget-object v1, v1, v0

    .line 7518
    if-eqz v1, :cond_3

    .line 7519
    const/4 v2, 0x4

    invoke-virtual {p1, v2, v1}, Llxz;->b(ILlyi;)V

    .line 7516
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 7523
    :cond_4
    iget-object v0, p0, Lkdx;->g:[B

    if-eqz v0, :cond_5

    .line 7524
    const/4 v0, 0x5

    iget-object v1, p0, Lkdx;->g:[B

    invoke-virtual {p1, v0, v1}, Llxz;->a(I[B)V

    .line 7526
    :cond_5
    iget-object v0, p0, Lkdx;->c:Ljzl;

    if-eqz v0, :cond_6

    .line 7527
    const/4 v0, 0x6

    iget-object v1, p0, Lkdx;->c:Ljzl;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 7529
    :cond_6
    iget-object v0, p0, Lkdx;->d:Ljxr;

    if-eqz v0, :cond_7

    .line 7530
    const/4 v0, 0x7

    iget-object v1, p0, Lkdx;->d:Ljxr;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 7532
    :cond_7
    iget-object v0, p0, Lkdx;->a:Ljava/lang/Integer;

    if-eqz v0, :cond_8

    .line 7533
    const/16 v0, 0x8

    iget-object v1, p0, Lkdx;->a:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(II)V

    .line 7535
    :cond_8
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 7536
    return-void
.end method

.method protected b()I
    .locals 5

    .prologue
    .line 7540
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 7541
    iget-object v1, p0, Lkdx;->responseHeader:Lkdp;

    if-eqz v1, :cond_0

    .line 7542
    const/4 v1, 0x1

    iget-object v2, p0, Lkdx;->responseHeader:Lkdp;

    .line 7543
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 7545
    :cond_0
    iget-object v1, p0, Lkdx;->e:Ljava/lang/Long;

    if-eqz v1, :cond_1

    .line 7546
    const/4 v1, 0x2

    iget-object v2, p0, Lkdx;->e:Ljava/lang/Long;

    .line 7547
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Llxz;->d(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 7549
    :cond_1
    iget-object v1, p0, Lkdx;->f:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 7550
    const/4 v1, 0x3

    iget-object v2, p0, Lkdx;->f:Ljava/lang/String;

    .line 7551
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 7553
    :cond_2
    iget-object v1, p0, Lkdx;->b:[Lkcb;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lkdx;->b:[Lkcb;

    array-length v1, v1

    if-lez v1, :cond_5

    .line 7554
    const/4 v1, 0x0

    move v4, v1

    move v1, v0

    move v0, v4

    :goto_0
    iget-object v2, p0, Lkdx;->b:[Lkcb;

    array-length v2, v2

    if-ge v0, v2, :cond_4

    .line 7555
    iget-object v2, p0, Lkdx;->b:[Lkcb;

    aget-object v2, v2, v0

    .line 7556
    if-eqz v2, :cond_3

    .line 7557
    const/4 v3, 0x4

    .line 7558
    invoke-static {v3, v2}, Llxz;->d(ILlyi;)I

    move-result v2

    add-int/2addr v1, v2

    .line 7554
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    move v0, v1

    .line 7562
    :cond_5
    iget-object v1, p0, Lkdx;->g:[B

    if-eqz v1, :cond_6

    .line 7563
    const/4 v1, 0x5

    iget-object v2, p0, Lkdx;->g:[B

    .line 7564
    invoke-static {v1, v2}, Llxz;->b(I[B)I

    move-result v1

    add-int/2addr v0, v1

    .line 7566
    :cond_6
    iget-object v1, p0, Lkdx;->c:Ljzl;

    if-eqz v1, :cond_7

    .line 7567
    const/4 v1, 0x6

    iget-object v2, p0, Lkdx;->c:Ljzl;

    .line 7568
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 7570
    :cond_7
    iget-object v1, p0, Lkdx;->d:Ljxr;

    if-eqz v1, :cond_8

    .line 7571
    const/4 v1, 0x7

    iget-object v2, p0, Lkdx;->d:Ljxr;

    .line 7572
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 7574
    :cond_8
    iget-object v1, p0, Lkdx;->a:Ljava/lang/Integer;

    if-eqz v1, :cond_9

    .line 7575
    const/16 v1, 0x8

    iget-object v2, p0, Lkdx;->a:Ljava/lang/Integer;

    .line 7576
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Llxz;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 7578
    :cond_9
    return v0
.end method
