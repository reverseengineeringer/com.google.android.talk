.class public final Ljvw;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Ljvw;",
        ">;"
    }
.end annotation


# instance fields
.field public a:[Ljvx;

.field public b:Ljava/lang/Long;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 4491
    invoke-direct {p0}, Llyb;-><init>()V

    .line 5496
    invoke-static {}, Ljvx;->d()[Ljvx;

    move-result-object v0

    iput-object v0, p0, Ljvw;->a:[Ljvx;

    .line 5497
    iput-object v1, p0, Ljvw;->b:Ljava/lang/Long;

    .line 5498
    iput-object v1, p0, Ljvw;->eD:Llyd;

    .line 5499
    const/4 v0, -0x1

    iput v0, p0, Ljvw;->eE:I

    .line 4493
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 5544
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 5545
    sparse-switch v0, :sswitch_data_0

    .line 5549
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 5550
    :sswitch_0
    return-object p0

    .line 5555
    :sswitch_1
    const/16 v0, 0xa

    .line 5556
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v2

    .line 5557
    iget-object v0, p0, Ljvw;->a:[Ljvx;

    if-nez v0, :cond_2

    move v0, v1

    .line 5558
    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Ljvx;

    .line 5560
    if-eqz v0, :cond_1

    .line 5561
    iget-object v3, p0, Ljvw;->a:[Ljvx;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 5563
    :cond_1
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_3

    .line 5564
    new-instance v3, Ljvx;

    invoke-direct {v3}, Ljvx;-><init>()V

    aput-object v3, v2, v0

    .line 5565
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Llxy;->a(Llyi;)V

    .line 5566
    invoke-virtual {p1}, Llxy;->a()I

    .line 5563
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 5557
    :cond_2
    iget-object v0, p0, Ljvw;->a:[Ljvx;

    array-length v0, v0

    goto :goto_1

    .line 5569
    :cond_3
    new-instance v3, Ljvx;

    invoke-direct {v3}, Ljvx;-><init>()V

    aput-object v3, v2, v0

    .line 5570
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    .line 5571
    iput-object v2, p0, Ljvw;->a:[Ljvx;

    goto :goto_0

    .line 5575
    :sswitch_2
    invoke-virtual {p1}, Llxy;->e()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Ljvw;->b:Ljava/lang/Long;

    goto :goto_0

    .line 5545
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x10 -> :sswitch_2
    .end sparse-switch
.end method

.method public a(Llxz;)V
    .locals 4

    .prologue
    .line 4506
    iget-object v0, p0, Ljvw;->a:[Ljvx;

    if-eqz v0, :cond_1

    iget-object v0, p0, Ljvw;->a:[Ljvx;

    array-length v0, v0

    if-lez v0, :cond_1

    .line 4507
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Ljvw;->a:[Ljvx;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 4508
    iget-object v1, p0, Ljvw;->a:[Ljvx;

    aget-object v1, v1, v0

    .line 4509
    if-eqz v1, :cond_0

    .line 4510
    const/4 v2, 0x1

    invoke-virtual {p1, v2, v1}, Llxz;->b(ILlyi;)V

    .line 4507
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 4514
    :cond_1
    iget-object v0, p0, Ljvw;->b:Ljava/lang/Long;

    if-eqz v0, :cond_2

    .line 4515
    const/4 v0, 0x2

    iget-object v1, p0, Ljvw;->b:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Llxz;->b(IJ)V

    .line 4517
    :cond_2
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 4518
    return-void
.end method

.method protected b()I
    .locals 4

    .prologue
    .line 4522
    invoke-super {p0}, Llyb;->b()I

    move-result v1

    .line 4523
    iget-object v0, p0, Ljvw;->a:[Ljvx;

    if-eqz v0, :cond_1

    iget-object v0, p0, Ljvw;->a:[Ljvx;

    array-length v0, v0

    if-lez v0, :cond_1

    .line 4524
    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Ljvw;->a:[Ljvx;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 4525
    iget-object v2, p0, Ljvw;->a:[Ljvx;

    aget-object v2, v2, v0

    .line 4526
    if-eqz v2, :cond_0

    .line 4527
    const/4 v3, 0x1

    .line 4528
    invoke-static {v3, v2}, Llxz;->d(ILlyi;)I

    move-result v2

    add-int/2addr v1, v2

    .line 4524
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 4532
    :cond_1
    iget-object v0, p0, Ljvw;->b:Ljava/lang/Long;

    if-eqz v0, :cond_2

    .line 4533
    const/4 v0, 0x2

    iget-object v2, p0, Ljvw;->b:Ljava/lang/Long;

    .line 4534
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Llxz;->e(IJ)I

    move-result v0

    add-int/2addr v1, v0

    .line 4536
    :cond_2
    return v1
.end method
