.class public final Lkdb;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Lkdb;",
        ">;"
    }
.end annotation


# instance fields
.field public a:[Lkcr;

.field public b:[I

.field public requestHeader:Lkdo;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 18476
    invoke-direct {p0}, Llyb;-><init>()V

    .line 19481
    iput-object v1, p0, Lkdb;->requestHeader:Lkdo;

    .line 19482
    invoke-static {}, Lkcr;->d()[Lkcr;

    move-result-object v0

    iput-object v0, p0, Lkdb;->a:[Lkcr;

    .line 19483
    sget-object v0, Llyo;->a:[I

    iput-object v0, p0, Lkdb;->b:[I

    .line 19484
    iput-object v1, p0, Lkdb;->eD:Llyd;

    .line 19485
    const/4 v0, -0x1

    iput v0, p0, Lkdb;->eE:I

    .line 18478
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 19545
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 19546
    sparse-switch v0, :sswitch_data_0

    .line 19550
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 19551
    :sswitch_0
    return-object p0

    .line 19556
    :sswitch_1
    iget-object v0, p0, Lkdb;->requestHeader:Lkdo;

    if-nez v0, :cond_1

    .line 19557
    new-instance v0, Lkdo;

    invoke-direct {v0}, Lkdo;-><init>()V

    iput-object v0, p0, Lkdb;->requestHeader:Lkdo;

    .line 19559
    :cond_1
    iget-object v0, p0, Lkdb;->requestHeader:Lkdo;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 19563
    :sswitch_2
    const/16 v0, 0x12

    .line 19564
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v2

    .line 19565
    iget-object v0, p0, Lkdb;->a:[Lkcr;

    if-nez v0, :cond_3

    move v0, v1

    .line 19566
    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Lkcr;

    .line 19568
    if-eqz v0, :cond_2

    .line 19569
    iget-object v3, p0, Lkdb;->a:[Lkcr;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 19571
    :cond_2
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_4

    .line 19572
    new-instance v3, Lkcr;

    invoke-direct {v3}, Lkcr;-><init>()V

    aput-object v3, v2, v0

    .line 19573
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Llxy;->a(Llyi;)V

    .line 19574
    invoke-virtual {p1}, Llxy;->a()I

    .line 19571
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 19565
    :cond_3
    iget-object v0, p0, Lkdb;->a:[Lkcr;

    array-length v0, v0

    goto :goto_1

    .line 19577
    :cond_4
    new-instance v3, Lkcr;

    invoke-direct {v3}, Lkcr;-><init>()V

    aput-object v3, v2, v0

    .line 19578
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    .line 19579
    iput-object v2, p0, Lkdb;->a:[Lkcr;

    goto :goto_0

    .line 19583
    :sswitch_3
    const/16 v0, 0x18

    .line 19584
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v4

    .line 19585
    new-array v5, v4, [I

    move v3, v1

    move v2, v1

    .line 19587
    :goto_3
    if-ge v3, v4, :cond_6

    .line 19588
    if-eqz v3, :cond_5

    .line 19589
    invoke-virtual {p1}, Llxy;->a()I

    .line 19591
    :cond_5
    invoke-virtual {p1}, Llxy;->f()I

    move-result v6

    .line 19592
    packed-switch v6, :pswitch_data_0

    move v0, v2

    .line 19587
    :goto_4
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    move v2, v0

    goto :goto_3

    .line 19603
    :pswitch_0
    add-int/lit8 v0, v2, 0x1

    aput v6, v5, v2

    goto :goto_4

    .line 19607
    :cond_6
    if-eqz v2, :cond_0

    .line 19608
    iget-object v0, p0, Lkdb;->b:[I

    if-nez v0, :cond_7

    move v0, v1

    .line 19609
    :goto_5
    if-nez v0, :cond_8

    array-length v3, v5

    if-ne v2, v3, :cond_8

    .line 19610
    iput-object v5, p0, Lkdb;->b:[I

    goto/16 :goto_0

    .line 19608
    :cond_7
    iget-object v0, p0, Lkdb;->b:[I

    array-length v0, v0

    goto :goto_5

    .line 19612
    :cond_8
    add-int v3, v0, v2

    new-array v3, v3, [I

    .line 19613
    if-eqz v0, :cond_9

    .line 19614
    iget-object v4, p0, Lkdb;->b:[I

    invoke-static {v4, v1, v3, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 19616
    :cond_9
    invoke-static {v5, v1, v3, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 19617
    iput-object v3, p0, Lkdb;->b:[I

    goto/16 :goto_0

    .line 19623
    :sswitch_4
    invoke-virtual {p1}, Llxy;->p()I

    move-result v0

    .line 19624
    invoke-virtual {p1, v0}, Llxy;->c(I)I

    move-result v3

    .line 19627
    invoke-virtual {p1}, Llxy;->r()I

    move-result v2

    move v0, v1

    .line 19628
    :goto_6
    invoke-virtual {p1}, Llxy;->q()I

    move-result v4

    if-lez v4, :cond_a

    .line 19629
    invoke-virtual {p1}, Llxy;->f()I

    move-result v4

    packed-switch v4, :pswitch_data_1

    goto :goto_6

    .line 19640
    :pswitch_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 19644
    :cond_a
    if-eqz v0, :cond_e

    .line 19645
    invoke-virtual {p1, v2}, Llxy;->e(I)V

    .line 19646
    iget-object v2, p0, Lkdb;->b:[I

    if-nez v2, :cond_c

    move v2, v1

    .line 19647
    :goto_7
    add-int/2addr v0, v2

    new-array v4, v0, [I

    .line 19648
    if-eqz v2, :cond_b

    .line 19649
    iget-object v0, p0, Lkdb;->b:[I

    invoke-static {v0, v1, v4, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 19651
    :cond_b
    :goto_8
    invoke-virtual {p1}, Llxy;->q()I

    move-result v0

    if-lez v0, :cond_d

    .line 19652
    invoke-virtual {p1}, Llxy;->f()I

    move-result v5

    .line 19653
    packed-switch v5, :pswitch_data_2

    goto :goto_8

    .line 19664
    :pswitch_2
    add-int/lit8 v0, v2, 0x1

    aput v5, v4, v2

    move v2, v0

    goto :goto_8

    .line 19646
    :cond_c
    iget-object v2, p0, Lkdb;->b:[I

    array-length v2, v2

    goto :goto_7

    .line 19668
    :cond_d
    iput-object v4, p0, Lkdb;->b:[I

    .line 19670
    :cond_e
    invoke-virtual {p1, v3}, Llxy;->d(I)V

    goto/16 :goto_0

    .line 19546
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x18 -> :sswitch_3
        0x1a -> :sswitch_4
    .end sparse-switch

    .line 19592
    :pswitch_data_0
    .packed-switch 0x1
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

    .line 19629
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch

    .line 19653
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
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

    .line 18492
    iget-object v0, p0, Lkdb;->requestHeader:Lkdo;

    if-eqz v0, :cond_0

    .line 18493
    const/4 v0, 0x1

    iget-object v2, p0, Lkdb;->requestHeader:Lkdo;

    invoke-virtual {p1, v0, v2}, Llxz;->b(ILlyi;)V

    .line 18495
    :cond_0
    iget-object v0, p0, Lkdb;->a:[Lkcr;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lkdb;->a:[Lkcr;

    array-length v0, v0

    if-lez v0, :cond_2

    move v0, v1

    .line 18496
    :goto_0
    iget-object v2, p0, Lkdb;->a:[Lkcr;

    array-length v2, v2

    if-ge v0, v2, :cond_2

    .line 18497
    iget-object v2, p0, Lkdb;->a:[Lkcr;

    aget-object v2, v2, v0

    .line 18498
    if-eqz v2, :cond_1

    .line 18499
    const/4 v3, 0x2

    invoke-virtual {p1, v3, v2}, Llxz;->b(ILlyi;)V

    .line 18496
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 18503
    :cond_2
    iget-object v0, p0, Lkdb;->b:[I

    if-eqz v0, :cond_3

    iget-object v0, p0, Lkdb;->b:[I

    array-length v0, v0

    if-lez v0, :cond_3

    .line 18504
    :goto_1
    iget-object v0, p0, Lkdb;->b:[I

    array-length v0, v0

    if-ge v1, v0, :cond_3

    .line 18505
    const/4 v0, 0x3

    iget-object v2, p0, Lkdb;->b:[I

    aget v2, v2, v1

    invoke-virtual {p1, v0, v2}, Llxz;->a(II)V

    .line 18504
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 18508
    :cond_3
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 18509
    return-void
.end method

.method protected b()I
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 18513
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 18514
    iget-object v2, p0, Lkdb;->requestHeader:Lkdo;

    if-eqz v2, :cond_0

    .line 18515
    const/4 v2, 0x1

    iget-object v3, p0, Lkdb;->requestHeader:Lkdo;

    .line 18516
    invoke-static {v2, v3}, Llxz;->d(ILlyi;)I

    move-result v2

    add-int/2addr v0, v2

    .line 18518
    :cond_0
    iget-object v2, p0, Lkdb;->a:[Lkcr;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lkdb;->a:[Lkcr;

    array-length v2, v2

    if-lez v2, :cond_3

    move v2, v0

    move v0, v1

    .line 18519
    :goto_0
    iget-object v3, p0, Lkdb;->a:[Lkcr;

    array-length v3, v3

    if-ge v0, v3, :cond_2

    .line 18520
    iget-object v3, p0, Lkdb;->a:[Lkcr;

    aget-object v3, v3, v0

    .line 18521
    if-eqz v3, :cond_1

    .line 18522
    const/4 v4, 0x2

    .line 18523
    invoke-static {v4, v3}, Llxz;->d(ILlyi;)I

    move-result v3

    add-int/2addr v2, v3

    .line 18519
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v2

    .line 18527
    :cond_3
    iget-object v2, p0, Lkdb;->b:[I

    if-eqz v2, :cond_5

    iget-object v2, p0, Lkdb;->b:[I

    array-length v2, v2

    if-lez v2, :cond_5

    move v2, v1

    .line 18529
    :goto_1
    iget-object v3, p0, Lkdb;->b:[I

    array-length v3, v3

    if-ge v1, v3, :cond_4

    .line 18530
    iget-object v3, p0, Lkdb;->b:[I

    aget v3, v3, v1

    .line 18532
    invoke-static {v3}, Llxz;->e(I)I

    move-result v3

    add-int/2addr v2, v3

    .line 18529
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 18534
    :cond_4
    add-int/2addr v0, v2

    .line 18535
    iget-object v1, p0, Lkdb;->b:[I

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    .line 18537
    :cond_5
    return v0
.end method
