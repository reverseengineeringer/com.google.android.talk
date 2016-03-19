.class public final Llnu;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Llnu;",
        ">;"
    }
.end annotation


# instance fields
.field public a:[Lloj;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 1648
    invoke-direct {p0}, Llyb;-><init>()V

    .line 2653
    invoke-static {}, Lloj;->d()[Lloj;

    move-result-object v0

    iput-object v0, p0, Llnu;->a:[Lloj;

    .line 2654
    const/4 v0, 0x0

    iput-object v0, p0, Llnu;->eD:Llyd;

    .line 2655
    const/4 v0, -0x1

    iput v0, p0, Llnu;->eE:I

    .line 1650
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 2693
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 2694
    sparse-switch v0, :sswitch_data_0

    .line 2698
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2699
    :sswitch_0
    return-object p0

    .line 2704
    :sswitch_1
    const/16 v0, 0xa

    .line 2705
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v2

    .line 2706
    iget-object v0, p0, Llnu;->a:[Lloj;

    if-nez v0, :cond_2

    move v0, v1

    .line 2707
    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Lloj;

    .line 2709
    if-eqz v0, :cond_1

    .line 2710
    iget-object v3, p0, Llnu;->a:[Lloj;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2712
    :cond_1
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_3

    .line 2713
    new-instance v3, Lloj;

    invoke-direct {v3}, Lloj;-><init>()V

    aput-object v3, v2, v0

    .line 2714
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Llxy;->a(Llyi;)V

    .line 2715
    invoke-virtual {p1}, Llxy;->a()I

    .line 2712
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 2706
    :cond_2
    iget-object v0, p0, Llnu;->a:[Lloj;

    array-length v0, v0

    goto :goto_1

    .line 2718
    :cond_3
    new-instance v3, Lloj;

    invoke-direct {v3}, Lloj;-><init>()V

    aput-object v3, v2, v0

    .line 2719
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    .line 2720
    iput-object v2, p0, Llnu;->a:[Lloj;

    goto :goto_0

    .line 2694
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
    .end sparse-switch
.end method

.method public a(Llxz;)V
    .locals 3

    .prologue
    .line 1662
    iget-object v0, p0, Llnu;->a:[Lloj;

    if-eqz v0, :cond_1

    iget-object v0, p0, Llnu;->a:[Lloj;

    array-length v0, v0

    if-lez v0, :cond_1

    .line 1663
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Llnu;->a:[Lloj;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 1664
    iget-object v1, p0, Llnu;->a:[Lloj;

    aget-object v1, v1, v0

    .line 1665
    if-eqz v1, :cond_0

    .line 1666
    const/4 v2, 0x1

    invoke-virtual {p1, v2, v1}, Llxz;->b(ILlyi;)V

    .line 1663
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1670
    :cond_1
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 1671
    return-void
.end method

.method protected b()I
    .locals 4

    .prologue
    .line 1675
    invoke-super {p0}, Llyb;->b()I

    move-result v1

    .line 1676
    iget-object v0, p0, Llnu;->a:[Lloj;

    if-eqz v0, :cond_1

    iget-object v0, p0, Llnu;->a:[Lloj;

    array-length v0, v0

    if-lez v0, :cond_1

    .line 1677
    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Llnu;->a:[Lloj;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 1678
    iget-object v2, p0, Llnu;->a:[Lloj;

    aget-object v2, v2, v0

    .line 1679
    if-eqz v2, :cond_0

    .line 1680
    const/4 v3, 0x1

    .line 1681
    invoke-static {v3, v2}, Llxz;->d(ILlyi;)I

    move-result v2

    add-int/2addr v1, v2

    .line 1677
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1685
    :cond_1
    return v1
.end method
