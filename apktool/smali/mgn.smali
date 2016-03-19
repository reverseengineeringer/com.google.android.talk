.class public final Lmgn;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Lmgn;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Lmgc;

.field public b:Ljava/lang/Integer;

.field public c:Lmgo;

.field public d:Ljava/lang/Integer;

.field public e:[Lmgh;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 635
    invoke-direct {p0}, Llyb;-><init>()V

    .line 1640
    iput-object v1, p0, Lmgn;->a:Lmgc;

    .line 1641
    iput-object v1, p0, Lmgn;->b:Ljava/lang/Integer;

    .line 1642
    iput-object v1, p0, Lmgn;->c:Lmgo;

    .line 1643
    iput-object v1, p0, Lmgn;->d:Ljava/lang/Integer;

    .line 1644
    invoke-static {}, Lmgh;->d()[Lmgh;

    move-result-object v0

    iput-object v0, p0, Lmgn;->e:[Lmgh;

    .line 1645
    iput-object v1, p0, Lmgn;->eD:Llyd;

    .line 1646
    const/4 v0, -0x1

    iput v0, p0, Lmgn;->eE:I

    .line 637
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 1712
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 1713
    sparse-switch v0, :sswitch_data_0

    .line 1717
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1718
    :sswitch_0
    return-object p0

    .line 1723
    :sswitch_1
    iget-object v0, p0, Lmgn;->a:Lmgc;

    if-nez v0, :cond_1

    .line 1724
    new-instance v0, Lmgc;

    invoke-direct {v0}, Lmgc;-><init>()V

    iput-object v0, p0, Lmgn;->a:Lmgc;

    .line 1726
    :cond_1
    iget-object v0, p0, Lmgn;->a:Lmgc;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 1730
    :sswitch_2
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    .line 1731
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 1734
    :pswitch_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lmgn;->b:Ljava/lang/Integer;

    goto :goto_0

    .line 1740
    :sswitch_3
    iget-object v0, p0, Lmgn;->c:Lmgo;

    if-nez v0, :cond_2

    .line 1741
    new-instance v0, Lmgo;

    invoke-direct {v0}, Lmgo;-><init>()V

    iput-object v0, p0, Lmgn;->c:Lmgo;

    .line 1743
    :cond_2
    iget-object v0, p0, Lmgn;->c:Lmgo;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 1747
    :sswitch_4
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lmgn;->d:Ljava/lang/Integer;

    goto :goto_0

    .line 1751
    :sswitch_5
    const/16 v0, 0x42

    .line 1752
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v2

    .line 1753
    iget-object v0, p0, Lmgn;->e:[Lmgh;

    if-nez v0, :cond_4

    move v0, v1

    .line 1754
    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Lmgh;

    .line 1756
    if-eqz v0, :cond_3

    .line 1757
    iget-object v3, p0, Lmgn;->e:[Lmgh;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1759
    :cond_3
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_5

    .line 1760
    new-instance v3, Lmgh;

    invoke-direct {v3}, Lmgh;-><init>()V

    aput-object v3, v2, v0

    .line 1761
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Llxy;->a(Llyi;)V

    .line 1762
    invoke-virtual {p1}, Llxy;->a()I

    .line 1759
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1753
    :cond_4
    iget-object v0, p0, Lmgn;->e:[Lmgh;

    array-length v0, v0

    goto :goto_1

    .line 1765
    :cond_5
    new-instance v3, Lmgh;

    invoke-direct {v3}, Lmgh;-><init>()V

    aput-object v3, v2, v0

    .line 1766
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    .line 1767
    iput-object v2, p0, Lmgn;->e:[Lmgh;

    goto/16 :goto_0

    .line 1713
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x12 -> :sswitch_1
        0x28 -> :sswitch_2
        0x32 -> :sswitch_3
        0x38 -> :sswitch_4
        0x42 -> :sswitch_5
    .end sparse-switch

    .line 1731
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public a(Llxz;)V
    .locals 3

    .prologue
    .line 653
    iget-object v0, p0, Lmgn;->a:Lmgc;

    if-eqz v0, :cond_0

    .line 654
    const/4 v0, 0x2

    iget-object v1, p0, Lmgn;->a:Lmgc;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 656
    :cond_0
    iget-object v0, p0, Lmgn;->b:Ljava/lang/Integer;

    if-eqz v0, :cond_1

    .line 657
    const/4 v0, 0x5

    iget-object v1, p0, Lmgn;->b:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(II)V

    .line 659
    :cond_1
    iget-object v0, p0, Lmgn;->c:Lmgo;

    if-eqz v0, :cond_2

    .line 660
    const/4 v0, 0x6

    iget-object v1, p0, Lmgn;->c:Lmgo;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 662
    :cond_2
    iget-object v0, p0, Lmgn;->d:Ljava/lang/Integer;

    if-eqz v0, :cond_3

    .line 663
    const/4 v0, 0x7

    iget-object v1, p0, Lmgn;->d:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(II)V

    .line 665
    :cond_3
    iget-object v0, p0, Lmgn;->e:[Lmgh;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lmgn;->e:[Lmgh;

    array-length v0, v0

    if-lez v0, :cond_5

    .line 666
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lmgn;->e:[Lmgh;

    array-length v1, v1

    if-ge v0, v1, :cond_5

    .line 667
    iget-object v1, p0, Lmgn;->e:[Lmgh;

    aget-object v1, v1, v0

    .line 668
    if-eqz v1, :cond_4

    .line 669
    const/16 v2, 0x8

    invoke-virtual {p1, v2, v1}, Llxz;->b(ILlyi;)V

    .line 666
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 673
    :cond_5
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 674
    return-void
.end method

.method protected b()I
    .locals 5

    .prologue
    .line 678
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 679
    iget-object v1, p0, Lmgn;->a:Lmgc;

    if-eqz v1, :cond_0

    .line 680
    const/4 v1, 0x2

    iget-object v2, p0, Lmgn;->a:Lmgc;

    .line 681
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 683
    :cond_0
    iget-object v1, p0, Lmgn;->b:Ljava/lang/Integer;

    if-eqz v1, :cond_1

    .line 684
    const/4 v1, 0x5

    iget-object v2, p0, Lmgn;->b:Ljava/lang/Integer;

    .line 685
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Llxz;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 687
    :cond_1
    iget-object v1, p0, Lmgn;->c:Lmgo;

    if-eqz v1, :cond_2

    .line 688
    const/4 v1, 0x6

    iget-object v2, p0, Lmgn;->c:Lmgo;

    .line 689
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 691
    :cond_2
    iget-object v1, p0, Lmgn;->d:Ljava/lang/Integer;

    if-eqz v1, :cond_3

    .line 692
    const/4 v1, 0x7

    iget-object v2, p0, Lmgn;->d:Ljava/lang/Integer;

    .line 693
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Llxz;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 695
    :cond_3
    iget-object v1, p0, Lmgn;->e:[Lmgh;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lmgn;->e:[Lmgh;

    array-length v1, v1

    if-lez v1, :cond_6

    .line 696
    const/4 v1, 0x0

    move v4, v1

    move v1, v0

    move v0, v4

    :goto_0
    iget-object v2, p0, Lmgn;->e:[Lmgh;

    array-length v2, v2

    if-ge v0, v2, :cond_5

    .line 697
    iget-object v2, p0, Lmgn;->e:[Lmgh;

    aget-object v2, v2, v0

    .line 698
    if-eqz v2, :cond_4

    .line 699
    const/16 v3, 0x8

    .line 700
    invoke-static {v3, v2}, Llxz;->d(ILlyi;)I

    move-result v2

    add-int/2addr v1, v2

    .line 696
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_5
    move v0, v1

    .line 704
    :cond_6
    return v0
.end method
