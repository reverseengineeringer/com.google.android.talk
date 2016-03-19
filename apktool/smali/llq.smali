.class public final Lllq;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Lllq;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/Integer;

.field public d:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 4515
    invoke-direct {p0}, Llyb;-><init>()V

    .line 5520
    iput-object v1, p0, Lllq;->a:Ljava/lang/String;

    .line 5521
    iput-object v1, p0, Lllq;->b:Ljava/lang/String;

    .line 5522
    iput-object v1, p0, Lllq;->c:Ljava/lang/Integer;

    .line 5523
    sget-object v0, Llyo;->f:[Ljava/lang/String;

    iput-object v0, p0, Lllq;->d:[Ljava/lang/String;

    .line 5524
    iput-object v1, p0, Lllq;->eD:Llyd;

    .line 5525
    const/4 v0, -0x1

    iput v0, p0, Lllq;->eE:I

    .line 4517
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 5589
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 5590
    sparse-switch v0, :sswitch_data_0

    .line 5594
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 5595
    :sswitch_0
    return-object p0

    .line 5600
    :sswitch_1
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lllq;->a:Ljava/lang/String;

    goto :goto_0

    .line 5604
    :sswitch_2
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lllq;->b:Ljava/lang/String;

    goto :goto_0

    .line 5608
    :sswitch_3
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lllq;->c:Ljava/lang/Integer;

    goto :goto_0

    .line 5612
    :sswitch_4
    const/16 v0, 0x22

    .line 5613
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v2

    .line 5614
    iget-object v0, p0, Lllq;->d:[Ljava/lang/String;

    if-nez v0, :cond_2

    move v0, v1

    .line 5615
    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Ljava/lang/String;

    .line 5616
    if-eqz v0, :cond_1

    .line 5617
    iget-object v3, p0, Lllq;->d:[Ljava/lang/String;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 5619
    :cond_1
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_3

    .line 5620
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    .line 5621
    invoke-virtual {p1}, Llxy;->a()I

    .line 5619
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 5614
    :cond_2
    iget-object v0, p0, Lllq;->d:[Ljava/lang/String;

    array-length v0, v0

    goto :goto_1

    .line 5624
    :cond_3
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    .line 5625
    iput-object v2, p0, Lllq;->d:[Ljava/lang/String;

    goto :goto_0

    .line 5590
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x18 -> :sswitch_3
        0x22 -> :sswitch_4
    .end sparse-switch
.end method

.method public a(Llxz;)V
    .locals 3

    .prologue
    .line 4532
    iget-object v0, p0, Lllq;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 4533
    const/4 v0, 0x1

    iget-object v1, p0, Lllq;->a:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 4535
    :cond_0
    iget-object v0, p0, Lllq;->b:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 4536
    const/4 v0, 0x2

    iget-object v1, p0, Lllq;->b:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 4538
    :cond_1
    iget-object v0, p0, Lllq;->c:Ljava/lang/Integer;

    if-eqz v0, :cond_2

    .line 4539
    const/4 v0, 0x3

    iget-object v1, p0, Lllq;->c:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(II)V

    .line 4541
    :cond_2
    iget-object v0, p0, Lllq;->d:[Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lllq;->d:[Ljava/lang/String;

    array-length v0, v0

    if-lez v0, :cond_4

    .line 4542
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lllq;->d:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_4

    .line 4543
    iget-object v1, p0, Lllq;->d:[Ljava/lang/String;

    aget-object v1, v1, v0

    .line 4544
    if-eqz v1, :cond_3

    .line 4545
    const/4 v2, 0x4

    invoke-virtual {p1, v2, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 4542
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 4549
    :cond_4
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 4550
    return-void
.end method

.method protected b()I
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 4554
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 4555
    iget-object v2, p0, Lllq;->a:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 4556
    const/4 v2, 0x1

    iget-object v3, p0, Lllq;->a:Ljava/lang/String;

    .line 4557
    invoke-static {v2, v3}, Llxz;->b(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    .line 4559
    :cond_0
    iget-object v2, p0, Lllq;->b:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 4560
    const/4 v2, 0x2

    iget-object v3, p0, Lllq;->b:Ljava/lang/String;

    .line 4561
    invoke-static {v2, v3}, Llxz;->b(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    .line 4563
    :cond_1
    iget-object v2, p0, Lllq;->c:Ljava/lang/Integer;

    if-eqz v2, :cond_2

    .line 4564
    const/4 v2, 0x3

    iget-object v3, p0, Lllq;->c:Ljava/lang/Integer;

    .line 4565
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v2, v3}, Llxz;->e(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 4567
    :cond_2
    iget-object v2, p0, Lllq;->d:[Ljava/lang/String;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lllq;->d:[Ljava/lang/String;

    array-length v2, v2

    if-lez v2, :cond_5

    move v2, v1

    move v3, v1

    .line 4570
    :goto_0
    iget-object v4, p0, Lllq;->d:[Ljava/lang/String;

    array-length v4, v4

    if-ge v1, v4, :cond_4

    .line 4571
    iget-object v4, p0, Lllq;->d:[Ljava/lang/String;

    aget-object v4, v4, v1

    .line 4572
    if-eqz v4, :cond_3

    .line 4573
    add-int/lit8 v3, v3, 0x1

    .line 4575
    invoke-static {v4}, Llxz;->a(Ljava/lang/String;)I

    move-result v4

    add-int/2addr v2, v4

    .line 4570
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4578
    :cond_4
    add-int/2addr v0, v2

    .line 4579
    mul-int/lit8 v1, v3, 0x1

    add-int/2addr v0, v1

    .line 4581
    :cond_5
    return v0
.end method
