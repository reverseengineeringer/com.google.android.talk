.class public final Lkah;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Lkah;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Ljava/lang/Integer;

.field public b:Ljyc;

.field public c:Lkcy;

.field public d:[Lkdq;

.field public e:[Ljzh;

.field public responseHeader:Lkdp;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 14445
    invoke-direct {p0}, Llyb;-><init>()V

    .line 15450
    iput-object v1, p0, Lkah;->responseHeader:Lkdp;

    .line 15451
    iput-object v1, p0, Lkah;->a:Ljava/lang/Integer;

    .line 15452
    iput-object v1, p0, Lkah;->b:Ljyc;

    .line 15453
    iput-object v1, p0, Lkah;->c:Lkcy;

    .line 15454
    invoke-static {}, Lkdq;->d()[Lkdq;

    move-result-object v0

    iput-object v0, p0, Lkah;->d:[Lkdq;

    .line 15455
    invoke-static {}, Ljzh;->d()[Ljzh;

    move-result-object v0

    iput-object v0, p0, Lkah;->e:[Ljzh;

    .line 15456
    iput-object v1, p0, Lkah;->eD:Llyd;

    .line 15457
    const/4 v0, -0x1

    iput v0, p0, Lkah;->eE:I

    .line 14447
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 15540
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 15541
    sparse-switch v0, :sswitch_data_0

    .line 15545
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 15546
    :sswitch_0
    return-object p0

    .line 15551
    :sswitch_1
    iget-object v0, p0, Lkah;->responseHeader:Lkdp;

    if-nez v0, :cond_1

    .line 15552
    new-instance v0, Lkdp;

    invoke-direct {v0}, Lkdp;-><init>()V

    iput-object v0, p0, Lkah;->responseHeader:Lkdp;

    .line 15554
    :cond_1
    iget-object v0, p0, Lkah;->responseHeader:Lkdp;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 15558
    :sswitch_2
    iget-object v0, p0, Lkah;->b:Ljyc;

    if-nez v0, :cond_2

    .line 15559
    new-instance v0, Ljyc;

    invoke-direct {v0}, Ljyc;-><init>()V

    iput-object v0, p0, Lkah;->b:Ljyc;

    .line 15561
    :cond_2
    iget-object v0, p0, Lkah;->b:Ljyc;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 15565
    :sswitch_3
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    .line 15566
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 15568
    :pswitch_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lkah;->a:Ljava/lang/Integer;

    goto :goto_0

    .line 15574
    :sswitch_4
    iget-object v0, p0, Lkah;->c:Lkcy;

    if-nez v0, :cond_3

    .line 15575
    new-instance v0, Lkcy;

    invoke-direct {v0}, Lkcy;-><init>()V

    iput-object v0, p0, Lkah;->c:Lkcy;

    .line 15577
    :cond_3
    iget-object v0, p0, Lkah;->c:Lkcy;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 15581
    :sswitch_5
    const/16 v0, 0x2a

    .line 15582
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v2

    .line 15583
    iget-object v0, p0, Lkah;->d:[Lkdq;

    if-nez v0, :cond_5

    move v0, v1

    .line 15584
    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Lkdq;

    .line 15586
    if-eqz v0, :cond_4

    .line 15587
    iget-object v3, p0, Lkah;->d:[Lkdq;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 15589
    :cond_4
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_6

    .line 15590
    new-instance v3, Lkdq;

    invoke-direct {v3}, Lkdq;-><init>()V

    aput-object v3, v2, v0

    .line 15591
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Llxy;->a(Llyi;)V

    .line 15592
    invoke-virtual {p1}, Llxy;->a()I

    .line 15589
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 15583
    :cond_5
    iget-object v0, p0, Lkah;->d:[Lkdq;

    array-length v0, v0

    goto :goto_1

    .line 15595
    :cond_6
    new-instance v3, Lkdq;

    invoke-direct {v3}, Lkdq;-><init>()V

    aput-object v3, v2, v0

    .line 15596
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    .line 15597
    iput-object v2, p0, Lkah;->d:[Lkdq;

    goto/16 :goto_0

    .line 15601
    :sswitch_6
    const/16 v0, 0x3a

    .line 15602
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v2

    .line 15603
    iget-object v0, p0, Lkah;->e:[Ljzh;

    if-nez v0, :cond_8

    move v0, v1

    .line 15604
    :goto_3
    add-int/2addr v2, v0

    new-array v2, v2, [Ljzh;

    .line 15606
    if-eqz v0, :cond_7

    .line 15607
    iget-object v3, p0, Lkah;->e:[Ljzh;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 15609
    :cond_7
    :goto_4
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_9

    .line 15610
    new-instance v3, Ljzh;

    invoke-direct {v3}, Ljzh;-><init>()V

    aput-object v3, v2, v0

    .line 15611
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Llxy;->a(Llyi;)V

    .line 15612
    invoke-virtual {p1}, Llxy;->a()I

    .line 15609
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 15603
    :cond_8
    iget-object v0, p0, Lkah;->e:[Ljzh;

    array-length v0, v0

    goto :goto_3

    .line 15615
    :cond_9
    new-instance v3, Ljzh;

    invoke-direct {v3}, Ljzh;-><init>()V

    aput-object v3, v2, v0

    .line 15616
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    .line 15617
    iput-object v2, p0, Lkah;->e:[Ljzh;

    goto/16 :goto_0

    .line 15541
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x18 -> :sswitch_3
        0x22 -> :sswitch_4
        0x2a -> :sswitch_5
        0x3a -> :sswitch_6
    .end sparse-switch

    .line 15566
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public a(Llxz;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 14464
    iget-object v0, p0, Lkah;->responseHeader:Lkdp;

    if-eqz v0, :cond_0

    .line 14465
    const/4 v0, 0x1

    iget-object v2, p0, Lkah;->responseHeader:Lkdp;

    invoke-virtual {p1, v0, v2}, Llxz;->b(ILlyi;)V

    .line 14467
    :cond_0
    iget-object v0, p0, Lkah;->b:Ljyc;

    if-eqz v0, :cond_1

    .line 14468
    const/4 v0, 0x2

    iget-object v2, p0, Lkah;->b:Ljyc;

    invoke-virtual {p1, v0, v2}, Llxz;->b(ILlyi;)V

    .line 14470
    :cond_1
    iget-object v0, p0, Lkah;->a:Ljava/lang/Integer;

    if-eqz v0, :cond_2

    .line 14471
    const/4 v0, 0x3

    iget-object v2, p0, Lkah;->a:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p1, v0, v2}, Llxz;->a(II)V

    .line 14473
    :cond_2
    iget-object v0, p0, Lkah;->c:Lkcy;

    if-eqz v0, :cond_3

    .line 14474
    const/4 v0, 0x4

    iget-object v2, p0, Lkah;->c:Lkcy;

    invoke-virtual {p1, v0, v2}, Llxz;->b(ILlyi;)V

    .line 14476
    :cond_3
    iget-object v0, p0, Lkah;->d:[Lkdq;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lkah;->d:[Lkdq;

    array-length v0, v0

    if-lez v0, :cond_5

    move v0, v1

    .line 14477
    :goto_0
    iget-object v2, p0, Lkah;->d:[Lkdq;

    array-length v2, v2

    if-ge v0, v2, :cond_5

    .line 14478
    iget-object v2, p0, Lkah;->d:[Lkdq;

    aget-object v2, v2, v0

    .line 14479
    if-eqz v2, :cond_4

    .line 14480
    const/4 v3, 0x5

    invoke-virtual {p1, v3, v2}, Llxz;->b(ILlyi;)V

    .line 14477
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 14484
    :cond_5
    iget-object v0, p0, Lkah;->e:[Ljzh;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lkah;->e:[Ljzh;

    array-length v0, v0

    if-lez v0, :cond_7

    .line 14485
    :goto_1
    iget-object v0, p0, Lkah;->e:[Ljzh;

    array-length v0, v0

    if-ge v1, v0, :cond_7

    .line 14486
    iget-object v0, p0, Lkah;->e:[Ljzh;

    aget-object v0, v0, v1

    .line 14487
    if-eqz v0, :cond_6

    .line 14488
    const/4 v2, 0x7

    invoke-virtual {p1, v2, v0}, Llxz;->b(ILlyi;)V

    .line 14485
    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 14492
    :cond_7
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 14493
    return-void
.end method

.method protected b()I
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 14497
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 14498
    iget-object v2, p0, Lkah;->responseHeader:Lkdp;

    if-eqz v2, :cond_0

    .line 14499
    const/4 v2, 0x1

    iget-object v3, p0, Lkah;->responseHeader:Lkdp;

    .line 14500
    invoke-static {v2, v3}, Llxz;->d(ILlyi;)I

    move-result v2

    add-int/2addr v0, v2

    .line 14502
    :cond_0
    iget-object v2, p0, Lkah;->b:Ljyc;

    if-eqz v2, :cond_1

    .line 14503
    const/4 v2, 0x2

    iget-object v3, p0, Lkah;->b:Ljyc;

    .line 14504
    invoke-static {v2, v3}, Llxz;->d(ILlyi;)I

    move-result v2

    add-int/2addr v0, v2

    .line 14506
    :cond_1
    iget-object v2, p0, Lkah;->a:Ljava/lang/Integer;

    if-eqz v2, :cond_2

    .line 14507
    const/4 v2, 0x3

    iget-object v3, p0, Lkah;->a:Ljava/lang/Integer;

    .line 14508
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v2, v3}, Llxz;->e(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 14510
    :cond_2
    iget-object v2, p0, Lkah;->c:Lkcy;

    if-eqz v2, :cond_3

    .line 14511
    const/4 v2, 0x4

    iget-object v3, p0, Lkah;->c:Lkcy;

    .line 14512
    invoke-static {v2, v3}, Llxz;->d(ILlyi;)I

    move-result v2

    add-int/2addr v0, v2

    .line 14514
    :cond_3
    iget-object v2, p0, Lkah;->d:[Lkdq;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lkah;->d:[Lkdq;

    array-length v2, v2

    if-lez v2, :cond_6

    move v2, v0

    move v0, v1

    .line 14515
    :goto_0
    iget-object v3, p0, Lkah;->d:[Lkdq;

    array-length v3, v3

    if-ge v0, v3, :cond_5

    .line 14516
    iget-object v3, p0, Lkah;->d:[Lkdq;

    aget-object v3, v3, v0

    .line 14517
    if-eqz v3, :cond_4

    .line 14518
    const/4 v4, 0x5

    .line 14519
    invoke-static {v4, v3}, Llxz;->d(ILlyi;)I

    move-result v3

    add-int/2addr v2, v3

    .line 14515
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_5
    move v0, v2

    .line 14523
    :cond_6
    iget-object v2, p0, Lkah;->e:[Ljzh;

    if-eqz v2, :cond_8

    iget-object v2, p0, Lkah;->e:[Ljzh;

    array-length v2, v2

    if-lez v2, :cond_8

    .line 14524
    :goto_1
    iget-object v2, p0, Lkah;->e:[Ljzh;

    array-length v2, v2

    if-ge v1, v2, :cond_8

    .line 14525
    iget-object v2, p0, Lkah;->e:[Ljzh;

    aget-object v2, v2, v1

    .line 14526
    if-eqz v2, :cond_7

    .line 14527
    const/4 v3, 0x7

    .line 14528
    invoke-static {v3, v2}, Llxz;->d(ILlyi;)I

    move-result v2

    add-int/2addr v0, v2

    .line 14524
    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 14532
    :cond_8
    return v0
.end method
