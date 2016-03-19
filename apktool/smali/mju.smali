.class public final Lmju;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Lmju;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Lmiv;

.field public b:[Lmkx;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 483
    invoke-direct {p0}, Llyb;-><init>()V

    .line 1488
    iput-object v1, p0, Lmju;->a:Lmiv;

    .line 1489
    invoke-static {}, Lmkx;->d()[Lmkx;

    move-result-object v0

    iput-object v0, p0, Lmju;->b:[Lmkx;

    .line 1490
    iput-object v1, p0, Lmju;->eD:Llyd;

    .line 1491
    const/4 v0, -0x1

    iput v0, p0, Lmju;->eE:I

    .line 485
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 1536
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 1537
    sparse-switch v0, :sswitch_data_0

    .line 1541
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1542
    :sswitch_0
    return-object p0

    .line 1547
    :sswitch_1
    iget-object v0, p0, Lmju;->a:Lmiv;

    if-nez v0, :cond_1

    .line 1548
    new-instance v0, Lmiv;

    invoke-direct {v0}, Lmiv;-><init>()V

    iput-object v0, p0, Lmju;->a:Lmiv;

    .line 1550
    :cond_1
    iget-object v0, p0, Lmju;->a:Lmiv;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 1554
    :sswitch_2
    const/16 v0, 0x12

    .line 1555
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v2

    .line 1556
    iget-object v0, p0, Lmju;->b:[Lmkx;

    if-nez v0, :cond_3

    move v0, v1

    .line 1557
    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Lmkx;

    .line 1559
    if-eqz v0, :cond_2

    .line 1560
    iget-object v3, p0, Lmju;->b:[Lmkx;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1562
    :cond_2
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_4

    .line 1563
    new-instance v3, Lmkx;

    invoke-direct {v3}, Lmkx;-><init>()V

    aput-object v3, v2, v0

    .line 1564
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Llxy;->a(Llyi;)V

    .line 1565
    invoke-virtual {p1}, Llxy;->a()I

    .line 1562
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1556
    :cond_3
    iget-object v0, p0, Lmju;->b:[Lmkx;

    array-length v0, v0

    goto :goto_1

    .line 1568
    :cond_4
    new-instance v3, Lmkx;

    invoke-direct {v3}, Lmkx;-><init>()V

    aput-object v3, v2, v0

    .line 1569
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    .line 1570
    iput-object v2, p0, Lmju;->b:[Lmkx;

    goto :goto_0

    .line 1537
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
    .end sparse-switch
.end method

.method public a(Llxz;)V
    .locals 3

    .prologue
    .line 498
    iget-object v0, p0, Lmju;->a:Lmiv;

    if-eqz v0, :cond_0

    .line 499
    const/4 v0, 0x1

    iget-object v1, p0, Lmju;->a:Lmiv;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 501
    :cond_0
    iget-object v0, p0, Lmju;->b:[Lmkx;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lmju;->b:[Lmkx;

    array-length v0, v0

    if-lez v0, :cond_2

    .line 502
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lmju;->b:[Lmkx;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 503
    iget-object v1, p0, Lmju;->b:[Lmkx;

    aget-object v1, v1, v0

    .line 504
    if-eqz v1, :cond_1

    .line 505
    const/4 v2, 0x2

    invoke-virtual {p1, v2, v1}, Llxz;->b(ILlyi;)V

    .line 502
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 509
    :cond_2
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 510
    return-void
.end method

.method protected b()I
    .locals 5

    .prologue
    .line 514
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 515
    iget-object v1, p0, Lmju;->a:Lmiv;

    if-eqz v1, :cond_0

    .line 516
    const/4 v1, 0x1

    iget-object v2, p0, Lmju;->a:Lmiv;

    .line 517
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 519
    :cond_0
    iget-object v1, p0, Lmju;->b:[Lmkx;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lmju;->b:[Lmkx;

    array-length v1, v1

    if-lez v1, :cond_3

    .line 520
    const/4 v1, 0x0

    move v4, v1

    move v1, v0

    move v0, v4

    :goto_0
    iget-object v2, p0, Lmju;->b:[Lmkx;

    array-length v2, v2

    if-ge v0, v2, :cond_2

    .line 521
    iget-object v2, p0, Lmju;->b:[Lmkx;

    aget-object v2, v2, v0

    .line 522
    if-eqz v2, :cond_1

    .line 523
    const/4 v3, 0x2

    .line 524
    invoke-static {v3, v2}, Llxz;->d(ILlyi;)I

    move-result v2

    add-int/2addr v1, v2

    .line 520
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v1

    .line 528
    :cond_3
    return v0
.end method
