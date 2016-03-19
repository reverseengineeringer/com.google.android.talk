.class public final Lkfu;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Lkfu;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Ljava/lang/Integer;

.field public b:[Lkaa;

.field public c:[B

.field public responseHeader:Lkdp;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 29572
    invoke-direct {p0}, Llyb;-><init>()V

    .line 30577
    iput-object v1, p0, Lkfu;->responseHeader:Lkdp;

    .line 30578
    iput-object v1, p0, Lkfu;->a:Ljava/lang/Integer;

    .line 30579
    invoke-static {}, Lkaa;->d()[Lkaa;

    move-result-object v0

    iput-object v0, p0, Lkfu;->b:[Lkaa;

    .line 30580
    iput-object v1, p0, Lkfu;->c:[B

    .line 30581
    iput-object v1, p0, Lkfu;->eD:Llyd;

    .line 30582
    const/4 v0, -0x1

    iput v0, p0, Lkfu;->eE:I

    .line 29574
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 30641
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 30642
    sparse-switch v0, :sswitch_data_0

    .line 30646
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 30647
    :sswitch_0
    return-object p0

    .line 30652
    :sswitch_1
    iget-object v0, p0, Lkfu;->responseHeader:Lkdp;

    if-nez v0, :cond_1

    .line 30653
    new-instance v0, Lkdp;

    invoke-direct {v0}, Lkdp;-><init>()V

    iput-object v0, p0, Lkfu;->responseHeader:Lkdp;

    .line 30655
    :cond_1
    iget-object v0, p0, Lkfu;->responseHeader:Lkdp;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 30659
    :sswitch_2
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    .line 30660
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 30663
    :pswitch_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lkfu;->a:Ljava/lang/Integer;

    goto :goto_0

    .line 30669
    :sswitch_3
    const/16 v0, 0x1a

    .line 30670
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v2

    .line 30671
    iget-object v0, p0, Lkfu;->b:[Lkaa;

    if-nez v0, :cond_3

    move v0, v1

    .line 30672
    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Lkaa;

    .line 30674
    if-eqz v0, :cond_2

    .line 30675
    iget-object v3, p0, Lkfu;->b:[Lkaa;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 30677
    :cond_2
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_4

    .line 30678
    new-instance v3, Lkaa;

    invoke-direct {v3}, Lkaa;-><init>()V

    aput-object v3, v2, v0

    .line 30679
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Llxy;->a(Llyi;)V

    .line 30680
    invoke-virtual {p1}, Llxy;->a()I

    .line 30677
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 30671
    :cond_3
    iget-object v0, p0, Lkfu;->b:[Lkaa;

    array-length v0, v0

    goto :goto_1

    .line 30683
    :cond_4
    new-instance v3, Lkaa;

    invoke-direct {v3}, Lkaa;-><init>()V

    aput-object v3, v2, v0

    .line 30684
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    .line 30685
    iput-object v2, p0, Lkfu;->b:[Lkaa;

    goto :goto_0

    .line 30689
    :sswitch_4
    invoke-virtual {p1}, Llxy;->k()[B

    move-result-object v0

    iput-object v0, p0, Lkfu;->c:[B

    goto :goto_0

    .line 30642
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x10 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
    .end sparse-switch

    .line 30660
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public a(Llxz;)V
    .locals 3

    .prologue
    .line 29589
    iget-object v0, p0, Lkfu;->responseHeader:Lkdp;

    if-eqz v0, :cond_0

    .line 29590
    const/4 v0, 0x1

    iget-object v1, p0, Lkfu;->responseHeader:Lkdp;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 29592
    :cond_0
    iget-object v0, p0, Lkfu;->a:Ljava/lang/Integer;

    if-eqz v0, :cond_1

    .line 29593
    const/4 v0, 0x2

    iget-object v1, p0, Lkfu;->a:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(II)V

    .line 29595
    :cond_1
    iget-object v0, p0, Lkfu;->b:[Lkaa;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lkfu;->b:[Lkaa;

    array-length v0, v0

    if-lez v0, :cond_3

    .line 29596
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lkfu;->b:[Lkaa;

    array-length v1, v1

    if-ge v0, v1, :cond_3

    .line 29597
    iget-object v1, p0, Lkfu;->b:[Lkaa;

    aget-object v1, v1, v0

    .line 29598
    if-eqz v1, :cond_2

    .line 29599
    const/4 v2, 0x3

    invoke-virtual {p1, v2, v1}, Llxz;->b(ILlyi;)V

    .line 29596
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 29603
    :cond_3
    iget-object v0, p0, Lkfu;->c:[B

    if-eqz v0, :cond_4

    .line 29604
    const/4 v0, 0x4

    iget-object v1, p0, Lkfu;->c:[B

    invoke-virtual {p1, v0, v1}, Llxz;->a(I[B)V

    .line 29606
    :cond_4
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 29607
    return-void
.end method

.method protected b()I
    .locals 5

    .prologue
    .line 29611
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 29612
    iget-object v1, p0, Lkfu;->responseHeader:Lkdp;

    if-eqz v1, :cond_0

    .line 29613
    const/4 v1, 0x1

    iget-object v2, p0, Lkfu;->responseHeader:Lkdp;

    .line 29614
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 29616
    :cond_0
    iget-object v1, p0, Lkfu;->a:Ljava/lang/Integer;

    if-eqz v1, :cond_1

    .line 29617
    const/4 v1, 0x2

    iget-object v2, p0, Lkfu;->a:Ljava/lang/Integer;

    .line 29618
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Llxz;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 29620
    :cond_1
    iget-object v1, p0, Lkfu;->b:[Lkaa;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lkfu;->b:[Lkaa;

    array-length v1, v1

    if-lez v1, :cond_4

    .line 29621
    const/4 v1, 0x0

    move v4, v1

    move v1, v0

    move v0, v4

    :goto_0
    iget-object v2, p0, Lkfu;->b:[Lkaa;

    array-length v2, v2

    if-ge v0, v2, :cond_3

    .line 29622
    iget-object v2, p0, Lkfu;->b:[Lkaa;

    aget-object v2, v2, v0

    .line 29623
    if-eqz v2, :cond_2

    .line 29624
    const/4 v3, 0x3

    .line 29625
    invoke-static {v3, v2}, Llxz;->d(ILlyi;)I

    move-result v2

    add-int/2addr v1, v2

    .line 29621
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    move v0, v1

    .line 29629
    :cond_4
    iget-object v1, p0, Lkfu;->c:[B

    if-eqz v1, :cond_5

    .line 29630
    const/4 v1, 0x4

    iget-object v2, p0, Lkfu;->c:[B

    .line 29631
    invoke-static {v1, v2}, Llxz;->b(I[B)I

    move-result v1

    add-int/2addr v0, v1

    .line 29633
    :cond_5
    return v0
.end method
