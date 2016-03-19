.class public final Ljon;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Ljon;",
        ">;"
    }
.end annotation


# instance fields
.field public a:[Ljop;

.field public b:Ljop;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 683
    invoke-direct {p0}, Llyb;-><init>()V

    .line 1688
    invoke-static {}, Ljop;->d()[Ljop;

    move-result-object v0

    iput-object v0, p0, Ljon;->a:[Ljop;

    .line 1689
    iput-object v1, p0, Ljon;->b:Ljop;

    .line 1690
    iput-object v1, p0, Ljon;->eD:Llyd;

    .line 1691
    const/4 v0, -0x1

    iput v0, p0, Ljon;->eE:I

    .line 685
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 1736
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 1737
    sparse-switch v0, :sswitch_data_0

    .line 1741
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1742
    :sswitch_0
    return-object p0

    .line 1747
    :sswitch_1
    const/16 v0, 0xa

    .line 1748
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v2

    .line 1749
    iget-object v0, p0, Ljon;->a:[Ljop;

    if-nez v0, :cond_2

    move v0, v1

    .line 1750
    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Ljop;

    .line 1752
    if-eqz v0, :cond_1

    .line 1753
    iget-object v3, p0, Ljon;->a:[Ljop;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1755
    :cond_1
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_3

    .line 1756
    new-instance v3, Ljop;

    invoke-direct {v3}, Ljop;-><init>()V

    aput-object v3, v2, v0

    .line 1757
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Llxy;->a(Llyi;)V

    .line 1758
    invoke-virtual {p1}, Llxy;->a()I

    .line 1755
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1749
    :cond_2
    iget-object v0, p0, Ljon;->a:[Ljop;

    array-length v0, v0

    goto :goto_1

    .line 1761
    :cond_3
    new-instance v3, Ljop;

    invoke-direct {v3}, Ljop;-><init>()V

    aput-object v3, v2, v0

    .line 1762
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    .line 1763
    iput-object v2, p0, Ljon;->a:[Ljop;

    goto :goto_0

    .line 1767
    :sswitch_2
    iget-object v0, p0, Ljon;->b:Ljop;

    if-nez v0, :cond_4

    .line 1768
    new-instance v0, Ljop;

    invoke-direct {v0}, Ljop;-><init>()V

    iput-object v0, p0, Ljon;->b:Ljop;

    .line 1770
    :cond_4
    iget-object v0, p0, Ljon;->b:Ljop;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 1737
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
    .line 698
    iget-object v0, p0, Ljon;->a:[Ljop;

    if-eqz v0, :cond_1

    iget-object v0, p0, Ljon;->a:[Ljop;

    array-length v0, v0

    if-lez v0, :cond_1

    .line 699
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Ljon;->a:[Ljop;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 700
    iget-object v1, p0, Ljon;->a:[Ljop;

    aget-object v1, v1, v0

    .line 701
    if-eqz v1, :cond_0

    .line 702
    const/4 v2, 0x1

    invoke-virtual {p1, v2, v1}, Llxz;->b(ILlyi;)V

    .line 699
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 706
    :cond_1
    iget-object v0, p0, Ljon;->b:Ljop;

    if-eqz v0, :cond_2

    .line 707
    const/4 v0, 0x2

    iget-object v1, p0, Ljon;->b:Ljop;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 709
    :cond_2
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 710
    return-void
.end method

.method protected b()I
    .locals 4

    .prologue
    .line 714
    invoke-super {p0}, Llyb;->b()I

    move-result v1

    .line 715
    iget-object v0, p0, Ljon;->a:[Ljop;

    if-eqz v0, :cond_1

    iget-object v0, p0, Ljon;->a:[Ljop;

    array-length v0, v0

    if-lez v0, :cond_1

    .line 716
    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Ljon;->a:[Ljop;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 717
    iget-object v2, p0, Ljon;->a:[Ljop;

    aget-object v2, v2, v0

    .line 718
    if-eqz v2, :cond_0

    .line 719
    const/4 v3, 0x1

    .line 720
    invoke-static {v3, v2}, Llxz;->d(ILlyi;)I

    move-result v2

    add-int/2addr v1, v2

    .line 716
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 724
    :cond_1
    iget-object v0, p0, Ljon;->b:Ljop;

    if-eqz v0, :cond_2

    .line 725
    const/4 v0, 0x2

    iget-object v2, p0, Ljon;->b:Ljop;

    .line 726
    invoke-static {v0, v2}, Llxz;->d(ILlyi;)I

    move-result v0

    add-int/2addr v1, v0

    .line 728
    :cond_2
    return v1
.end method
