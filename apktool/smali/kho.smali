.class public final Lkho;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Lkho;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Lkhk;

.field public b:Lkii;

.field public c:Ljava/lang/Integer;

.field public d:[Lkhk;

.field public responseHeader:Lkdp;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 4538
    invoke-direct {p0}, Llyb;-><init>()V

    .line 5543
    iput-object v1, p0, Lkho;->responseHeader:Lkdp;

    .line 5544
    iput-object v1, p0, Lkho;->a:Lkhk;

    .line 5545
    iput-object v1, p0, Lkho;->b:Lkii;

    .line 5546
    iput-object v1, p0, Lkho;->c:Ljava/lang/Integer;

    .line 5547
    invoke-static {}, Lkhk;->d()[Lkhk;

    move-result-object v0

    iput-object v0, p0, Lkho;->d:[Lkhk;

    .line 5548
    iput-object v1, p0, Lkho;->eD:Llyd;

    .line 5549
    const/4 v0, -0x1

    iput v0, p0, Lkho;->eE:I

    .line 4540
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 5615
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 5616
    sparse-switch v0, :sswitch_data_0

    .line 5620
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 5621
    :sswitch_0
    return-object p0

    .line 5626
    :sswitch_1
    iget-object v0, p0, Lkho;->responseHeader:Lkdp;

    if-nez v0, :cond_1

    .line 5627
    new-instance v0, Lkdp;

    invoke-direct {v0}, Lkdp;-><init>()V

    iput-object v0, p0, Lkho;->responseHeader:Lkdp;

    .line 5629
    :cond_1
    iget-object v0, p0, Lkho;->responseHeader:Lkdp;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 5633
    :sswitch_2
    iget-object v0, p0, Lkho;->a:Lkhk;

    if-nez v0, :cond_2

    .line 5634
    new-instance v0, Lkhk;

    invoke-direct {v0}, Lkhk;-><init>()V

    iput-object v0, p0, Lkho;->a:Lkhk;

    .line 5636
    :cond_2
    iget-object v0, p0, Lkho;->a:Lkhk;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 5640
    :sswitch_3
    iget-object v0, p0, Lkho;->b:Lkii;

    if-nez v0, :cond_3

    .line 5641
    new-instance v0, Lkii;

    invoke-direct {v0}, Lkii;-><init>()V

    iput-object v0, p0, Lkho;->b:Lkii;

    .line 5643
    :cond_3
    iget-object v0, p0, Lkho;->b:Lkii;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 5647
    :sswitch_4
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    .line 5648
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 5667
    :pswitch_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lkho;->c:Ljava/lang/Integer;

    goto :goto_0

    .line 5673
    :sswitch_5
    const/16 v0, 0x2a

    .line 5674
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v2

    .line 5675
    iget-object v0, p0, Lkho;->d:[Lkhk;

    if-nez v0, :cond_5

    move v0, v1

    .line 5676
    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Lkhk;

    .line 5678
    if-eqz v0, :cond_4

    .line 5679
    iget-object v3, p0, Lkho;->d:[Lkhk;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 5681
    :cond_4
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_6

    .line 5682
    new-instance v3, Lkhk;

    invoke-direct {v3}, Lkhk;-><init>()V

    aput-object v3, v2, v0

    .line 5683
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Llxy;->a(Llyi;)V

    .line 5684
    invoke-virtual {p1}, Llxy;->a()I

    .line 5681
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 5675
    :cond_5
    iget-object v0, p0, Lkho;->d:[Lkhk;

    array-length v0, v0

    goto :goto_1

    .line 5687
    :cond_6
    new-instance v3, Lkhk;

    invoke-direct {v3}, Lkhk;-><init>()V

    aput-object v3, v2, v0

    .line 5688
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    .line 5689
    iput-object v2, p0, Lkho;->d:[Lkhk;

    goto/16 :goto_0

    .line 5616
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x20 -> :sswitch_4
        0x2a -> :sswitch_5
    .end sparse-switch

    .line 5648
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
    .locals 3

    .prologue
    .line 4556
    iget-object v0, p0, Lkho;->responseHeader:Lkdp;

    if-eqz v0, :cond_0

    .line 4557
    const/4 v0, 0x1

    iget-object v1, p0, Lkho;->responseHeader:Lkdp;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 4559
    :cond_0
    iget-object v0, p0, Lkho;->a:Lkhk;

    if-eqz v0, :cond_1

    .line 4560
    const/4 v0, 0x2

    iget-object v1, p0, Lkho;->a:Lkhk;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 4562
    :cond_1
    iget-object v0, p0, Lkho;->b:Lkii;

    if-eqz v0, :cond_2

    .line 4563
    const/4 v0, 0x3

    iget-object v1, p0, Lkho;->b:Lkii;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 4565
    :cond_2
    iget-object v0, p0, Lkho;->c:Ljava/lang/Integer;

    if-eqz v0, :cond_3

    .line 4566
    const/4 v0, 0x4

    iget-object v1, p0, Lkho;->c:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(II)V

    .line 4568
    :cond_3
    iget-object v0, p0, Lkho;->d:[Lkhk;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lkho;->d:[Lkhk;

    array-length v0, v0

    if-lez v0, :cond_5

    .line 4569
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lkho;->d:[Lkhk;

    array-length v1, v1

    if-ge v0, v1, :cond_5

    .line 4570
    iget-object v1, p0, Lkho;->d:[Lkhk;

    aget-object v1, v1, v0

    .line 4571
    if-eqz v1, :cond_4

    .line 4572
    const/4 v2, 0x5

    invoke-virtual {p1, v2, v1}, Llxz;->b(ILlyi;)V

    .line 4569
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 4576
    :cond_5
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 4577
    return-void
.end method

.method protected b()I
    .locals 5

    .prologue
    .line 4581
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 4582
    iget-object v1, p0, Lkho;->responseHeader:Lkdp;

    if-eqz v1, :cond_0

    .line 4583
    const/4 v1, 0x1

    iget-object v2, p0, Lkho;->responseHeader:Lkdp;

    .line 4584
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4586
    :cond_0
    iget-object v1, p0, Lkho;->a:Lkhk;

    if-eqz v1, :cond_1

    .line 4587
    const/4 v1, 0x2

    iget-object v2, p0, Lkho;->a:Lkhk;

    .line 4588
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4590
    :cond_1
    iget-object v1, p0, Lkho;->b:Lkii;

    if-eqz v1, :cond_2

    .line 4591
    const/4 v1, 0x3

    iget-object v2, p0, Lkho;->b:Lkii;

    .line 4592
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4594
    :cond_2
    iget-object v1, p0, Lkho;->c:Ljava/lang/Integer;

    if-eqz v1, :cond_3

    .line 4595
    const/4 v1, 0x4

    iget-object v2, p0, Lkho;->c:Ljava/lang/Integer;

    .line 4596
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Llxz;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 4598
    :cond_3
    iget-object v1, p0, Lkho;->d:[Lkhk;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lkho;->d:[Lkhk;

    array-length v1, v1

    if-lez v1, :cond_6

    .line 4599
    const/4 v1, 0x0

    move v4, v1

    move v1, v0

    move v0, v4

    :goto_0
    iget-object v2, p0, Lkho;->d:[Lkhk;

    array-length v2, v2

    if-ge v0, v2, :cond_5

    .line 4600
    iget-object v2, p0, Lkho;->d:[Lkhk;

    aget-object v2, v2, v0

    .line 4601
    if-eqz v2, :cond_4

    .line 4602
    const/4 v3, 0x5

    .line 4603
    invoke-static {v3, v2}, Llxz;->d(ILlyi;)I

    move-result v2

    add-int/2addr v1, v2

    .line 4599
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_5
    move v0, v1

    .line 4607
    :cond_6
    return v0
.end method
