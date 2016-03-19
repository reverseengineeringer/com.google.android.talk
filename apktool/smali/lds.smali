.class public final Llds;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Llds;",
        ">;"
    }
.end annotation


# instance fields
.field public a:[Lldu;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 1579
    invoke-direct {p0}, Llyb;-><init>()V

    .line 2584
    invoke-static {}, Lldu;->d()[Lldu;

    move-result-object v0

    iput-object v0, p0, Llds;->a:[Lldu;

    .line 2585
    const/4 v0, 0x0

    iput-object v0, p0, Llds;->eD:Llyd;

    .line 2586
    const/4 v0, -0x1

    iput v0, p0, Llds;->eE:I

    .line 1581
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 2624
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 2625
    sparse-switch v0, :sswitch_data_0

    .line 2629
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2630
    :sswitch_0
    return-object p0

    .line 2635
    :sswitch_1
    const/16 v0, 0xa

    .line 2636
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v2

    .line 2637
    iget-object v0, p0, Llds;->a:[Lldu;

    if-nez v0, :cond_2

    move v0, v1

    .line 2638
    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Lldu;

    .line 2640
    if-eqz v0, :cond_1

    .line 2641
    iget-object v3, p0, Llds;->a:[Lldu;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2643
    :cond_1
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_3

    .line 2644
    new-instance v3, Lldu;

    invoke-direct {v3}, Lldu;-><init>()V

    aput-object v3, v2, v0

    .line 2645
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Llxy;->a(Llyi;)V

    .line 2646
    invoke-virtual {p1}, Llxy;->a()I

    .line 2643
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 2637
    :cond_2
    iget-object v0, p0, Llds;->a:[Lldu;

    array-length v0, v0

    goto :goto_1

    .line 2649
    :cond_3
    new-instance v3, Lldu;

    invoke-direct {v3}, Lldu;-><init>()V

    aput-object v3, v2, v0

    .line 2650
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    .line 2651
    iput-object v2, p0, Llds;->a:[Lldu;

    goto :goto_0

    .line 2625
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
    .end sparse-switch
.end method

.method public a(Llxz;)V
    .locals 3

    .prologue
    .line 1593
    iget-object v0, p0, Llds;->a:[Lldu;

    if-eqz v0, :cond_1

    iget-object v0, p0, Llds;->a:[Lldu;

    array-length v0, v0

    if-lez v0, :cond_1

    .line 1594
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Llds;->a:[Lldu;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 1595
    iget-object v1, p0, Llds;->a:[Lldu;

    aget-object v1, v1, v0

    .line 1596
    if-eqz v1, :cond_0

    .line 1597
    const/4 v2, 0x1

    invoke-virtual {p1, v2, v1}, Llxz;->b(ILlyi;)V

    .line 1594
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1601
    :cond_1
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 1602
    return-void
.end method

.method protected b()I
    .locals 4

    .prologue
    .line 1606
    invoke-super {p0}, Llyb;->b()I

    move-result v1

    .line 1607
    iget-object v0, p0, Llds;->a:[Lldu;

    if-eqz v0, :cond_1

    iget-object v0, p0, Llds;->a:[Lldu;

    array-length v0, v0

    if-lez v0, :cond_1

    .line 1608
    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Llds;->a:[Lldu;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 1609
    iget-object v2, p0, Llds;->a:[Lldu;

    aget-object v2, v2, v0

    .line 1610
    if-eqz v2, :cond_0

    .line 1611
    const/4 v3, 0x1

    .line 1612
    invoke-static {v3, v2}, Llxz;->d(ILlyi;)I

    move-result v2

    add-int/2addr v1, v2

    .line 1608
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1616
    :cond_1
    return v1
.end method
