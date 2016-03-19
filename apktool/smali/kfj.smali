.class public final Lkfj;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Lkfj;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Ljava/lang/Long;

.field public b:[Lkbr;

.field public c:[Lkfs;

.field public d:Ljava/lang/Integer;

.field public e:Ljava/lang/Boolean;

.field public f:Ljava/lang/Integer;

.field public g:Ljava/lang/Integer;

.field public h:[[B

.field public requestHeader:Lkdo;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 13464
    invoke-direct {p0}, Llyb;-><init>()V

    .line 14469
    iput-object v1, p0, Lkfj;->requestHeader:Lkdo;

    .line 14470
    iput-object v1, p0, Lkfj;->a:Ljava/lang/Long;

    .line 14471
    invoke-static {}, Lkbr;->d()[Lkbr;

    move-result-object v0

    iput-object v0, p0, Lkfj;->b:[Lkbr;

    .line 14472
    invoke-static {}, Lkfs;->d()[Lkfs;

    move-result-object v0

    iput-object v0, p0, Lkfj;->c:[Lkfs;

    .line 14473
    iput-object v1, p0, Lkfj;->d:Ljava/lang/Integer;

    .line 14474
    iput-object v1, p0, Lkfj;->e:Ljava/lang/Boolean;

    .line 14475
    iput-object v1, p0, Lkfj;->f:Ljava/lang/Integer;

    .line 14476
    iput-object v1, p0, Lkfj;->g:Ljava/lang/Integer;

    .line 14477
    sget-object v0, Llyo;->g:[[B

    iput-object v0, p0, Lkfj;->h:[[B

    .line 14478
    iput-object v1, p0, Lkfj;->eD:Llyd;

    .line 14479
    const/4 v0, -0x1

    iput v0, p0, Lkfj;->eE:I

    .line 13466
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 15598
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 15599
    sparse-switch v0, :sswitch_data_0

    .line 15603
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 15604
    :sswitch_0
    return-object p0

    .line 15609
    :sswitch_1
    iget-object v0, p0, Lkfj;->requestHeader:Lkdo;

    if-nez v0, :cond_1

    .line 15610
    new-instance v0, Lkdo;

    invoke-direct {v0}, Lkdo;-><init>()V

    iput-object v0, p0, Lkfj;->requestHeader:Lkdo;

    .line 15612
    :cond_1
    iget-object v0, p0, Lkfj;->requestHeader:Lkdo;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 15616
    :sswitch_2
    invoke-virtual {p1}, Llxy;->d()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lkfj;->a:Ljava/lang/Long;

    goto :goto_0

    .line 15620
    :sswitch_3
    const/16 v0, 0x1a

    .line 15621
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v2

    .line 15622
    iget-object v0, p0, Lkfj;->b:[Lkbr;

    if-nez v0, :cond_3

    move v0, v1

    .line 15623
    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Lkbr;

    .line 15625
    if-eqz v0, :cond_2

    .line 15626
    iget-object v3, p0, Lkfj;->b:[Lkbr;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 15628
    :cond_2
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_4

    .line 15629
    new-instance v3, Lkbr;

    invoke-direct {v3}, Lkbr;-><init>()V

    aput-object v3, v2, v0

    .line 15630
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Llxy;->a(Llyi;)V

    .line 15631
    invoke-virtual {p1}, Llxy;->a()I

    .line 15628
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 15622
    :cond_3
    iget-object v0, p0, Lkfj;->b:[Lkbr;

    array-length v0, v0

    goto :goto_1

    .line 15634
    :cond_4
    new-instance v3, Lkbr;

    invoke-direct {v3}, Lkbr;-><init>()V

    aput-object v3, v2, v0

    .line 15635
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    .line 15636
    iput-object v2, p0, Lkfj;->b:[Lkbr;

    goto :goto_0

    .line 15640
    :sswitch_4
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lkfj;->g:Ljava/lang/Integer;

    goto :goto_0

    .line 15644
    :sswitch_5
    const/16 v0, 0x2a

    .line 15645
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v2

    .line 15646
    iget-object v0, p0, Lkfj;->h:[[B

    if-nez v0, :cond_6

    move v0, v1

    .line 15647
    :goto_3
    add-int/2addr v2, v0

    new-array v2, v2, [[B

    .line 15648
    if-eqz v0, :cond_5

    .line 15649
    iget-object v3, p0, Lkfj;->h:[[B

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 15651
    :cond_5
    :goto_4
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_7

    .line 15652
    invoke-virtual {p1}, Llxy;->k()[B

    move-result-object v3

    aput-object v3, v2, v0

    .line 15653
    invoke-virtual {p1}, Llxy;->a()I

    .line 15651
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 15646
    :cond_6
    iget-object v0, p0, Lkfj;->h:[[B

    array-length v0, v0

    goto :goto_3

    .line 15656
    :cond_7
    invoke-virtual {p1}, Llxy;->k()[B

    move-result-object v3

    aput-object v3, v2, v0

    .line 15657
    iput-object v2, p0, Lkfj;->h:[[B

    goto/16 :goto_0

    .line 15661
    :sswitch_6
    invoke-virtual {p1}, Llxy;->i()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lkfj;->e:Ljava/lang/Boolean;

    goto/16 :goto_0

    .line 15665
    :sswitch_7
    const/16 v0, 0x3a

    .line 15666
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v2

    .line 15667
    iget-object v0, p0, Lkfj;->c:[Lkfs;

    if-nez v0, :cond_9

    move v0, v1

    .line 15668
    :goto_5
    add-int/2addr v2, v0

    new-array v2, v2, [Lkfs;

    .line 15670
    if-eqz v0, :cond_8

    .line 15671
    iget-object v3, p0, Lkfj;->c:[Lkfs;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 15673
    :cond_8
    :goto_6
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_a

    .line 15674
    new-instance v3, Lkfs;

    invoke-direct {v3}, Lkfs;-><init>()V

    aput-object v3, v2, v0

    .line 15675
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Llxy;->a(Llyi;)V

    .line 15676
    invoke-virtual {p1}, Llxy;->a()I

    .line 15673
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 15667
    :cond_9
    iget-object v0, p0, Lkfj;->c:[Lkfs;

    array-length v0, v0

    goto :goto_5

    .line 15679
    :cond_a
    new-instance v3, Lkfs;

    invoke-direct {v3}, Lkfs;-><init>()V

    aput-object v3, v2, v0

    .line 15680
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    .line 15681
    iput-object v2, p0, Lkfj;->c:[Lkfs;

    goto/16 :goto_0

    .line 15685
    :sswitch_8
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lkfj;->d:Ljava/lang/Integer;

    goto/16 :goto_0

    .line 15689
    :sswitch_9
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    .line 15690
    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    .line 15693
    :pswitch_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lkfj;->f:Ljava/lang/Integer;

    goto/16 :goto_0

    .line 15599
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x10 -> :sswitch_2
        0x1a -> :sswitch_3
        0x20 -> :sswitch_4
        0x2a -> :sswitch_5
        0x30 -> :sswitch_6
        0x3a -> :sswitch_7
        0x40 -> :sswitch_8
        0x48 -> :sswitch_9
    .end sparse-switch

    .line 15690
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public a(Llxz;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 13486
    iget-object v0, p0, Lkfj;->requestHeader:Lkdo;

    if-eqz v0, :cond_0

    .line 13487
    const/4 v0, 0x1

    iget-object v2, p0, Lkfj;->requestHeader:Lkdo;

    invoke-virtual {p1, v0, v2}, Llxz;->b(ILlyi;)V

    .line 13489
    :cond_0
    iget-object v0, p0, Lkfj;->a:Ljava/lang/Long;

    if-eqz v0, :cond_1

    .line 13490
    const/4 v0, 0x2

    iget-object v2, p0, Lkfj;->a:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Llxz;->a(IJ)V

    .line 13492
    :cond_1
    iget-object v0, p0, Lkfj;->b:[Lkbr;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lkfj;->b:[Lkbr;

    array-length v0, v0

    if-lez v0, :cond_3

    move v0, v1

    .line 13493
    :goto_0
    iget-object v2, p0, Lkfj;->b:[Lkbr;

    array-length v2, v2

    if-ge v0, v2, :cond_3

    .line 13494
    iget-object v2, p0, Lkfj;->b:[Lkbr;

    aget-object v2, v2, v0

    .line 13495
    if-eqz v2, :cond_2

    .line 13496
    const/4 v3, 0x3

    invoke-virtual {p1, v3, v2}, Llxz;->b(ILlyi;)V

    .line 13493
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 13500
    :cond_3
    iget-object v0, p0, Lkfj;->g:Ljava/lang/Integer;

    if-eqz v0, :cond_4

    .line 13501
    const/4 v0, 0x4

    iget-object v2, p0, Lkfj;->g:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p1, v0, v2}, Llxz;->a(II)V

    .line 13503
    :cond_4
    iget-object v0, p0, Lkfj;->h:[[B

    if-eqz v0, :cond_6

    iget-object v0, p0, Lkfj;->h:[[B

    array-length v0, v0

    if-lez v0, :cond_6

    move v0, v1

    .line 13504
    :goto_1
    iget-object v2, p0, Lkfj;->h:[[B

    array-length v2, v2

    if-ge v0, v2, :cond_6

    .line 13505
    iget-object v2, p0, Lkfj;->h:[[B

    aget-object v2, v2, v0

    .line 13506
    if-eqz v2, :cond_5

    .line 13507
    const/4 v3, 0x5

    invoke-virtual {p1, v3, v2}, Llxz;->a(I[B)V

    .line 13504
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 13511
    :cond_6
    iget-object v0, p0, Lkfj;->e:Ljava/lang/Boolean;

    if-eqz v0, :cond_7

    .line 13512
    const/4 v0, 0x6

    iget-object v2, p0, Lkfj;->e:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {p1, v0, v2}, Llxz;->a(IZ)V

    .line 13514
    :cond_7
    iget-object v0, p0, Lkfj;->c:[Lkfs;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lkfj;->c:[Lkfs;

    array-length v0, v0

    if-lez v0, :cond_9

    .line 13515
    :goto_2
    iget-object v0, p0, Lkfj;->c:[Lkfs;

    array-length v0, v0

    if-ge v1, v0, :cond_9

    .line 13516
    iget-object v0, p0, Lkfj;->c:[Lkfs;

    aget-object v0, v0, v1

    .line 13517
    if-eqz v0, :cond_8

    .line 13518
    const/4 v2, 0x7

    invoke-virtual {p1, v2, v0}, Llxz;->b(ILlyi;)V

    .line 13515
    :cond_8
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 13522
    :cond_9
    iget-object v0, p0, Lkfj;->d:Ljava/lang/Integer;

    if-eqz v0, :cond_a

    .line 13523
    const/16 v0, 0x8

    iget-object v1, p0, Lkfj;->d:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(II)V

    .line 13525
    :cond_a
    iget-object v0, p0, Lkfj;->f:Ljava/lang/Integer;

    if-eqz v0, :cond_b

    .line 13526
    const/16 v0, 0x9

    iget-object v1, p0, Lkfj;->f:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(II)V

    .line 13528
    :cond_b
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 13529
    return-void
.end method

.method protected b()I
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 13533
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 13534
    iget-object v2, p0, Lkfj;->requestHeader:Lkdo;

    if-eqz v2, :cond_0

    .line 13535
    const/4 v2, 0x1

    iget-object v3, p0, Lkfj;->requestHeader:Lkdo;

    .line 13536
    invoke-static {v2, v3}, Llxz;->d(ILlyi;)I

    move-result v2

    add-int/2addr v0, v2

    .line 13538
    :cond_0
    iget-object v2, p0, Lkfj;->a:Ljava/lang/Long;

    if-eqz v2, :cond_1

    .line 13539
    const/4 v2, 0x2

    iget-object v3, p0, Lkfj;->a:Ljava/lang/Long;

    .line 13540
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v2, v4, v5}, Llxz;->d(IJ)I

    move-result v2

    add-int/2addr v0, v2

    .line 13542
    :cond_1
    iget-object v2, p0, Lkfj;->b:[Lkbr;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lkfj;->b:[Lkbr;

    array-length v2, v2

    if-lez v2, :cond_4

    move v2, v0

    move v0, v1

    .line 13543
    :goto_0
    iget-object v3, p0, Lkfj;->b:[Lkbr;

    array-length v3, v3

    if-ge v0, v3, :cond_3

    .line 13544
    iget-object v3, p0, Lkfj;->b:[Lkbr;

    aget-object v3, v3, v0

    .line 13545
    if-eqz v3, :cond_2

    .line 13546
    const/4 v4, 0x3

    .line 13547
    invoke-static {v4, v3}, Llxz;->d(ILlyi;)I

    move-result v3

    add-int/2addr v2, v3

    .line 13543
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    move v0, v2

    .line 13551
    :cond_4
    iget-object v2, p0, Lkfj;->g:Ljava/lang/Integer;

    if-eqz v2, :cond_5

    .line 13552
    const/4 v2, 0x4

    iget-object v3, p0, Lkfj;->g:Ljava/lang/Integer;

    .line 13553
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v2, v3}, Llxz;->e(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 13555
    :cond_5
    iget-object v2, p0, Lkfj;->h:[[B

    if-eqz v2, :cond_8

    iget-object v2, p0, Lkfj;->h:[[B

    array-length v2, v2

    if-lez v2, :cond_8

    move v2, v1

    move v3, v1

    move v4, v1

    .line 13558
    :goto_1
    iget-object v5, p0, Lkfj;->h:[[B

    array-length v5, v5

    if-ge v2, v5, :cond_7

    .line 13559
    iget-object v5, p0, Lkfj;->h:[[B

    aget-object v5, v5, v2

    .line 13560
    if-eqz v5, :cond_6

    .line 13561
    add-int/lit8 v4, v4, 0x1

    .line 13563
    invoke-static {v5}, Llxz;->a([B)I

    move-result v5

    add-int/2addr v3, v5

    .line 13558
    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 13566
    :cond_7
    add-int/2addr v0, v3

    .line 13567
    mul-int/lit8 v2, v4, 0x1

    add-int/2addr v0, v2

    .line 13569
    :cond_8
    iget-object v2, p0, Lkfj;->e:Ljava/lang/Boolean;

    if-eqz v2, :cond_9

    .line 13570
    const/4 v2, 0x6

    iget-object v3, p0, Lkfj;->e:Ljava/lang/Boolean;

    .line 13571
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 14620
    invoke-static {v2}, Llxz;->f(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    .line 13571
    add-int/2addr v0, v2

    .line 13573
    :cond_9
    iget-object v2, p0, Lkfj;->c:[Lkfs;

    if-eqz v2, :cond_b

    iget-object v2, p0, Lkfj;->c:[Lkfs;

    array-length v2, v2

    if-lez v2, :cond_b

    .line 13574
    :goto_2
    iget-object v2, p0, Lkfj;->c:[Lkfs;

    array-length v2, v2

    if-ge v1, v2, :cond_b

    .line 13575
    iget-object v2, p0, Lkfj;->c:[Lkfs;

    aget-object v2, v2, v1

    .line 13576
    if-eqz v2, :cond_a

    .line 13577
    const/4 v3, 0x7

    .line 13578
    invoke-static {v3, v2}, Llxz;->d(ILlyi;)I

    move-result v2

    add-int/2addr v0, v2

    .line 13574
    :cond_a
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 13582
    :cond_b
    iget-object v1, p0, Lkfj;->d:Ljava/lang/Integer;

    if-eqz v1, :cond_c

    .line 13583
    const/16 v1, 0x8

    iget-object v2, p0, Lkfj;->d:Ljava/lang/Integer;

    .line 13584
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Llxz;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 13586
    :cond_c
    iget-object v1, p0, Lkfj;->f:Ljava/lang/Integer;

    if-eqz v1, :cond_d

    .line 13587
    const/16 v1, 0x9

    iget-object v2, p0, Lkfj;->f:Ljava/lang/Integer;

    .line 13588
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Llxz;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 13590
    :cond_d
    return v0
.end method
