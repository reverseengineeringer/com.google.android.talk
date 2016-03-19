.class public final Lkaj;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Lkaj;",
        ">;"
    }
.end annotation


# instance fields
.field public a:[Ljzh;

.field public b:[Lkak;

.field public responseHeader:Lkdp;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 30503
    invoke-direct {p0}, Llyb;-><init>()V

    .line 31508
    iput-object v1, p0, Lkaj;->responseHeader:Lkdp;

    .line 31509
    invoke-static {}, Ljzh;->d()[Ljzh;

    move-result-object v0

    iput-object v0, p0, Lkaj;->a:[Ljzh;

    .line 31510
    invoke-static {}, Lkak;->d()[Lkak;

    move-result-object v0

    iput-object v0, p0, Lkaj;->b:[Lkak;

    .line 31511
    iput-object v1, p0, Lkaj;->eD:Llyd;

    .line 31512
    const/4 v0, -0x1

    iput v0, p0, Lkaj;->eE:I

    .line 30505
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 31574
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 31575
    sparse-switch v0, :sswitch_data_0

    .line 31579
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 31580
    :sswitch_0
    return-object p0

    .line 31585
    :sswitch_1
    iget-object v0, p0, Lkaj;->responseHeader:Lkdp;

    if-nez v0, :cond_1

    .line 31586
    new-instance v0, Lkdp;

    invoke-direct {v0}, Lkdp;-><init>()V

    iput-object v0, p0, Lkaj;->responseHeader:Lkdp;

    .line 31588
    :cond_1
    iget-object v0, p0, Lkaj;->responseHeader:Lkdp;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 31592
    :sswitch_2
    const/16 v0, 0x12

    .line 31593
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v2

    .line 31594
    iget-object v0, p0, Lkaj;->a:[Ljzh;

    if-nez v0, :cond_3

    move v0, v1

    .line 31595
    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Ljzh;

    .line 31597
    if-eqz v0, :cond_2

    .line 31598
    iget-object v3, p0, Lkaj;->a:[Ljzh;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 31600
    :cond_2
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_4

    .line 31601
    new-instance v3, Ljzh;

    invoke-direct {v3}, Ljzh;-><init>()V

    aput-object v3, v2, v0

    .line 31602
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Llxy;->a(Llyi;)V

    .line 31603
    invoke-virtual {p1}, Llxy;->a()I

    .line 31600
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 31594
    :cond_3
    iget-object v0, p0, Lkaj;->a:[Ljzh;

    array-length v0, v0

    goto :goto_1

    .line 31606
    :cond_4
    new-instance v3, Ljzh;

    invoke-direct {v3}, Ljzh;-><init>()V

    aput-object v3, v2, v0

    .line 31607
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    .line 31608
    iput-object v2, p0, Lkaj;->a:[Ljzh;

    goto :goto_0

    .line 31612
    :sswitch_3
    const/16 v0, 0x1a

    .line 31613
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v2

    .line 31614
    iget-object v0, p0, Lkaj;->b:[Lkak;

    if-nez v0, :cond_6

    move v0, v1

    .line 31615
    :goto_3
    add-int/2addr v2, v0

    new-array v2, v2, [Lkak;

    .line 31617
    if-eqz v0, :cond_5

    .line 31618
    iget-object v3, p0, Lkaj;->b:[Lkak;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 31620
    :cond_5
    :goto_4
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_7

    .line 31621
    new-instance v3, Lkak;

    invoke-direct {v3}, Lkak;-><init>()V

    aput-object v3, v2, v0

    .line 31622
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Llxy;->a(Llyi;)V

    .line 31623
    invoke-virtual {p1}, Llxy;->a()I

    .line 31620
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 31614
    :cond_6
    iget-object v0, p0, Lkaj;->b:[Lkak;

    array-length v0, v0

    goto :goto_3

    .line 31626
    :cond_7
    new-instance v3, Lkak;

    invoke-direct {v3}, Lkak;-><init>()V

    aput-object v3, v2, v0

    .line 31627
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    .line 31628
    iput-object v2, p0, Lkaj;->b:[Lkak;

    goto/16 :goto_0

    .line 31575
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
    .end sparse-switch
.end method

.method public a(Llxz;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 30519
    iget-object v0, p0, Lkaj;->responseHeader:Lkdp;

    if-eqz v0, :cond_0

    .line 30520
    const/4 v0, 0x1

    iget-object v2, p0, Lkaj;->responseHeader:Lkdp;

    invoke-virtual {p1, v0, v2}, Llxz;->b(ILlyi;)V

    .line 30522
    :cond_0
    iget-object v0, p0, Lkaj;->a:[Ljzh;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lkaj;->a:[Ljzh;

    array-length v0, v0

    if-lez v0, :cond_2

    move v0, v1

    .line 30523
    :goto_0
    iget-object v2, p0, Lkaj;->a:[Ljzh;

    array-length v2, v2

    if-ge v0, v2, :cond_2

    .line 30524
    iget-object v2, p0, Lkaj;->a:[Ljzh;

    aget-object v2, v2, v0

    .line 30525
    if-eqz v2, :cond_1

    .line 30526
    const/4 v3, 0x2

    invoke-virtual {p1, v3, v2}, Llxz;->b(ILlyi;)V

    .line 30523
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 30530
    :cond_2
    iget-object v0, p0, Lkaj;->b:[Lkak;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lkaj;->b:[Lkak;

    array-length v0, v0

    if-lez v0, :cond_4

    .line 30531
    :goto_1
    iget-object v0, p0, Lkaj;->b:[Lkak;

    array-length v0, v0

    if-ge v1, v0, :cond_4

    .line 30532
    iget-object v0, p0, Lkaj;->b:[Lkak;

    aget-object v0, v0, v1

    .line 30533
    if-eqz v0, :cond_3

    .line 30534
    const/4 v2, 0x3

    invoke-virtual {p1, v2, v0}, Llxz;->b(ILlyi;)V

    .line 30531
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 30538
    :cond_4
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 30539
    return-void
.end method

.method protected b()I
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 30543
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 30544
    iget-object v2, p0, Lkaj;->responseHeader:Lkdp;

    if-eqz v2, :cond_0

    .line 30545
    const/4 v2, 0x1

    iget-object v3, p0, Lkaj;->responseHeader:Lkdp;

    .line 30546
    invoke-static {v2, v3}, Llxz;->d(ILlyi;)I

    move-result v2

    add-int/2addr v0, v2

    .line 30548
    :cond_0
    iget-object v2, p0, Lkaj;->a:[Ljzh;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lkaj;->a:[Ljzh;

    array-length v2, v2

    if-lez v2, :cond_3

    move v2, v0

    move v0, v1

    .line 30549
    :goto_0
    iget-object v3, p0, Lkaj;->a:[Ljzh;

    array-length v3, v3

    if-ge v0, v3, :cond_2

    .line 30550
    iget-object v3, p0, Lkaj;->a:[Ljzh;

    aget-object v3, v3, v0

    .line 30551
    if-eqz v3, :cond_1

    .line 30552
    const/4 v4, 0x2

    .line 30553
    invoke-static {v4, v3}, Llxz;->d(ILlyi;)I

    move-result v3

    add-int/2addr v2, v3

    .line 30549
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v2

    .line 30557
    :cond_3
    iget-object v2, p0, Lkaj;->b:[Lkak;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lkaj;->b:[Lkak;

    array-length v2, v2

    if-lez v2, :cond_5

    .line 30558
    :goto_1
    iget-object v2, p0, Lkaj;->b:[Lkak;

    array-length v2, v2

    if-ge v1, v2, :cond_5

    .line 30559
    iget-object v2, p0, Lkaj;->b:[Lkak;

    aget-object v2, v2, v1

    .line 30560
    if-eqz v2, :cond_4

    .line 30561
    const/4 v3, 0x3

    .line 30562
    invoke-static {v3, v2}, Llxz;->d(ILlyi;)I

    move-result v2

    add-int/2addr v0, v2

    .line 30558
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 30566
    :cond_5
    return v0
.end method
