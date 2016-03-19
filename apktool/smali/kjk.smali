.class public final Lkjk;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Lkjk;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Lkii;

.field public e:[Ljava/lang/String;

.field public requestHeader:Lkdo;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 4510
    invoke-direct {p0}, Llyb;-><init>()V

    .line 5515
    iput-object v1, p0, Lkjk;->requestHeader:Lkdo;

    .line 5516
    iput-object v1, p0, Lkjk;->a:Ljava/lang/String;

    .line 5517
    iput-object v1, p0, Lkjk;->b:Ljava/lang/String;

    .line 5518
    iput-object v1, p0, Lkjk;->c:Ljava/lang/String;

    .line 5519
    iput-object v1, p0, Lkjk;->d:Lkii;

    .line 5520
    sget-object v0, Llyo;->f:[Ljava/lang/String;

    iput-object v0, p0, Lkjk;->e:[Ljava/lang/String;

    .line 5521
    iput-object v1, p0, Lkjk;->eD:Llyd;

    .line 5522
    const/4 v0, -0x1

    iput v0, p0, Lkjk;->eE:I

    .line 4512
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 5600
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 5601
    sparse-switch v0, :sswitch_data_0

    .line 5605
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 5606
    :sswitch_0
    return-object p0

    .line 5611
    :sswitch_1
    iget-object v0, p0, Lkjk;->requestHeader:Lkdo;

    if-nez v0, :cond_1

    .line 5612
    new-instance v0, Lkdo;

    invoke-direct {v0}, Lkdo;-><init>()V

    iput-object v0, p0, Lkjk;->requestHeader:Lkdo;

    .line 5614
    :cond_1
    iget-object v0, p0, Lkjk;->requestHeader:Lkdo;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 5618
    :sswitch_2
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lkjk;->a:Ljava/lang/String;

    goto :goto_0

    .line 5622
    :sswitch_3
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lkjk;->b:Ljava/lang/String;

    goto :goto_0

    .line 5626
    :sswitch_4
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lkjk;->c:Ljava/lang/String;

    goto :goto_0

    .line 5630
    :sswitch_5
    iget-object v0, p0, Lkjk;->d:Lkii;

    if-nez v0, :cond_2

    .line 5631
    new-instance v0, Lkii;

    invoke-direct {v0}, Lkii;-><init>()V

    iput-object v0, p0, Lkjk;->d:Lkii;

    .line 5633
    :cond_2
    iget-object v0, p0, Lkjk;->d:Lkii;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 5637
    :sswitch_6
    const/16 v0, 0x32

    .line 5638
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v2

    .line 5639
    iget-object v0, p0, Lkjk;->e:[Ljava/lang/String;

    if-nez v0, :cond_4

    move v0, v1

    .line 5640
    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Ljava/lang/String;

    .line 5641
    if-eqz v0, :cond_3

    .line 5642
    iget-object v3, p0, Lkjk;->e:[Ljava/lang/String;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 5644
    :cond_3
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_5

    .line 5645
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    .line 5646
    invoke-virtual {p1}, Llxy;->a()I

    .line 5644
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 5639
    :cond_4
    iget-object v0, p0, Lkjk;->e:[Ljava/lang/String;

    array-length v0, v0

    goto :goto_1

    .line 5649
    :cond_5
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    .line 5650
    iput-object v2, p0, Lkjk;->e:[Ljava/lang/String;

    goto :goto_0

    .line 5601
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
        0x2a -> :sswitch_5
        0x32 -> :sswitch_6
    .end sparse-switch
.end method

.method public a(Llxz;)V
    .locals 3

    .prologue
    .line 4529
    iget-object v0, p0, Lkjk;->requestHeader:Lkdo;

    if-eqz v0, :cond_0

    .line 4530
    const/4 v0, 0x1

    iget-object v1, p0, Lkjk;->requestHeader:Lkdo;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 4532
    :cond_0
    iget-object v0, p0, Lkjk;->a:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 4533
    const/4 v0, 0x2

    iget-object v1, p0, Lkjk;->a:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 4535
    :cond_1
    iget-object v0, p0, Lkjk;->b:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 4536
    const/4 v0, 0x3

    iget-object v1, p0, Lkjk;->b:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 4538
    :cond_2
    iget-object v0, p0, Lkjk;->c:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 4539
    const/4 v0, 0x4

    iget-object v1, p0, Lkjk;->c:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 4541
    :cond_3
    iget-object v0, p0, Lkjk;->d:Lkii;

    if-eqz v0, :cond_4

    .line 4542
    const/4 v0, 0x5

    iget-object v1, p0, Lkjk;->d:Lkii;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 4544
    :cond_4
    iget-object v0, p0, Lkjk;->e:[Ljava/lang/String;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lkjk;->e:[Ljava/lang/String;

    array-length v0, v0

    if-lez v0, :cond_6

    .line 4545
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lkjk;->e:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_6

    .line 4546
    iget-object v1, p0, Lkjk;->e:[Ljava/lang/String;

    aget-object v1, v1, v0

    .line 4547
    if-eqz v1, :cond_5

    .line 4548
    const/4 v2, 0x6

    invoke-virtual {p1, v2, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 4545
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 4552
    :cond_6
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 4553
    return-void
.end method

.method protected b()I
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 4557
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 4558
    iget-object v2, p0, Lkjk;->requestHeader:Lkdo;

    if-eqz v2, :cond_0

    .line 4559
    const/4 v2, 0x1

    iget-object v3, p0, Lkjk;->requestHeader:Lkdo;

    .line 4560
    invoke-static {v2, v3}, Llxz;->d(ILlyi;)I

    move-result v2

    add-int/2addr v0, v2

    .line 4562
    :cond_0
    iget-object v2, p0, Lkjk;->a:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 4563
    const/4 v2, 0x2

    iget-object v3, p0, Lkjk;->a:Ljava/lang/String;

    .line 4564
    invoke-static {v2, v3}, Llxz;->b(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    .line 4566
    :cond_1
    iget-object v2, p0, Lkjk;->b:Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 4567
    const/4 v2, 0x3

    iget-object v3, p0, Lkjk;->b:Ljava/lang/String;

    .line 4568
    invoke-static {v2, v3}, Llxz;->b(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    .line 4570
    :cond_2
    iget-object v2, p0, Lkjk;->c:Ljava/lang/String;

    if-eqz v2, :cond_3

    .line 4571
    const/4 v2, 0x4

    iget-object v3, p0, Lkjk;->c:Ljava/lang/String;

    .line 4572
    invoke-static {v2, v3}, Llxz;->b(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    .line 4574
    :cond_3
    iget-object v2, p0, Lkjk;->d:Lkii;

    if-eqz v2, :cond_4

    .line 4575
    const/4 v2, 0x5

    iget-object v3, p0, Lkjk;->d:Lkii;

    .line 4576
    invoke-static {v2, v3}, Llxz;->d(ILlyi;)I

    move-result v2

    add-int/2addr v0, v2

    .line 4578
    :cond_4
    iget-object v2, p0, Lkjk;->e:[Ljava/lang/String;

    if-eqz v2, :cond_7

    iget-object v2, p0, Lkjk;->e:[Ljava/lang/String;

    array-length v2, v2

    if-lez v2, :cond_7

    move v2, v1

    move v3, v1

    .line 4581
    :goto_0
    iget-object v4, p0, Lkjk;->e:[Ljava/lang/String;

    array-length v4, v4

    if-ge v1, v4, :cond_6

    .line 4582
    iget-object v4, p0, Lkjk;->e:[Ljava/lang/String;

    aget-object v4, v4, v1

    .line 4583
    if-eqz v4, :cond_5

    .line 4584
    add-int/lit8 v3, v3, 0x1

    .line 4586
    invoke-static {v4}, Llxz;->a(Ljava/lang/String;)I

    move-result v4

    add-int/2addr v2, v4

    .line 4581
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4589
    :cond_6
    add-int/2addr v0, v2

    .line 4590
    mul-int/lit8 v1, v3, 0x1

    add-int/2addr v0, v1

    .line 4592
    :cond_7
    return v0
.end method
