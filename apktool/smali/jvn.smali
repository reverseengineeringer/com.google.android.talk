.class public final Ljvn;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Ljvn;",
        ">;"
    }
.end annotation


# instance fields
.field public a:[Ljvk;

.field public b:Ljava/lang/Long;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 457
    invoke-direct {p0}, Llyb;-><init>()V

    .line 1462
    invoke-static {}, Ljvk;->d()[Ljvk;

    move-result-object v0

    iput-object v0, p0, Ljvn;->a:[Ljvk;

    .line 1463
    iput-object v1, p0, Ljvn;->b:Ljava/lang/Long;

    .line 1464
    iput-object v1, p0, Ljvn;->eD:Llyd;

    .line 1465
    const/4 v0, -0x1

    iput v0, p0, Ljvn;->eE:I

    .line 459
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 1510
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 1511
    sparse-switch v0, :sswitch_data_0

    .line 1515
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1516
    :sswitch_0
    return-object p0

    .line 1521
    :sswitch_1
    const/16 v0, 0xa

    .line 1522
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v2

    .line 1523
    iget-object v0, p0, Ljvn;->a:[Ljvk;

    if-nez v0, :cond_2

    move v0, v1

    .line 1524
    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Ljvk;

    .line 1526
    if-eqz v0, :cond_1

    .line 1527
    iget-object v3, p0, Ljvn;->a:[Ljvk;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1529
    :cond_1
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_3

    .line 1530
    new-instance v3, Ljvk;

    invoke-direct {v3}, Ljvk;-><init>()V

    aput-object v3, v2, v0

    .line 1531
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Llxy;->a(Llyi;)V

    .line 1532
    invoke-virtual {p1}, Llxy;->a()I

    .line 1529
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1523
    :cond_2
    iget-object v0, p0, Ljvn;->a:[Ljvk;

    array-length v0, v0

    goto :goto_1

    .line 1535
    :cond_3
    new-instance v3, Ljvk;

    invoke-direct {v3}, Ljvk;-><init>()V

    aput-object v3, v2, v0

    .line 1536
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    .line 1537
    iput-object v2, p0, Ljvn;->a:[Ljvk;

    goto :goto_0

    .line 1541
    :sswitch_2
    invoke-virtual {p1}, Llxy;->e()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Ljvn;->b:Ljava/lang/Long;

    goto :goto_0

    .line 1511
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
    .line 472
    iget-object v0, p0, Ljvn;->a:[Ljvk;

    if-eqz v0, :cond_1

    iget-object v0, p0, Ljvn;->a:[Ljvk;

    array-length v0, v0

    if-lez v0, :cond_1

    .line 473
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Ljvn;->a:[Ljvk;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 474
    iget-object v1, p0, Ljvn;->a:[Ljvk;

    aget-object v1, v1, v0

    .line 475
    if-eqz v1, :cond_0

    .line 476
    const/4 v2, 0x1

    invoke-virtual {p1, v2, v1}, Llxz;->b(ILlyi;)V

    .line 473
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 480
    :cond_1
    iget-object v0, p0, Ljvn;->b:Ljava/lang/Long;

    if-eqz v0, :cond_2

    .line 481
    const/4 v0, 0x2

    iget-object v1, p0, Ljvn;->b:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Llxz;->b(IJ)V

    .line 483
    :cond_2
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 484
    return-void
.end method

.method protected b()I
    .locals 4

    .prologue
    .line 488
    invoke-super {p0}, Llyb;->b()I

    move-result v1

    .line 489
    iget-object v0, p0, Ljvn;->a:[Ljvk;

    if-eqz v0, :cond_1

    iget-object v0, p0, Ljvn;->a:[Ljvk;

    array-length v0, v0

    if-lez v0, :cond_1

    .line 490
    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Ljvn;->a:[Ljvk;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 491
    iget-object v2, p0, Ljvn;->a:[Ljvk;

    aget-object v2, v2, v0

    .line 492
    if-eqz v2, :cond_0

    .line 493
    const/4 v3, 0x1

    .line 494
    invoke-static {v3, v2}, Llxz;->d(ILlyi;)I

    move-result v2

    add-int/2addr v1, v2

    .line 490
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 498
    :cond_1
    iget-object v0, p0, Ljvn;->b:Ljava/lang/Long;

    if-eqz v0, :cond_2

    .line 499
    const/4 v0, 0x2

    iget-object v2, p0, Ljvn;->b:Ljava/lang/Long;

    .line 500
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Llxz;->e(IJ)I

    move-result v0

    add-int/2addr v1, v0

    .line 502
    :cond_2
    return v1
.end method
