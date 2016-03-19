.class public final Lkhb;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Lkhb;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Lkii;

.field public d:[Ljava/lang/String;

.field public requestHeader:Lkdo;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 685
    invoke-direct {p0}, Llyb;-><init>()V

    .line 1690
    iput-object v1, p0, Lkhb;->requestHeader:Lkdo;

    .line 1691
    iput-object v1, p0, Lkhb;->a:Ljava/lang/String;

    .line 1692
    iput-object v1, p0, Lkhb;->b:Ljava/lang/String;

    .line 1693
    iput-object v1, p0, Lkhb;->c:Lkii;

    .line 1694
    sget-object v0, Llyo;->f:[Ljava/lang/String;

    iput-object v0, p0, Lkhb;->d:[Ljava/lang/String;

    .line 1695
    iput-object v1, p0, Lkhb;->eD:Llyd;

    .line 1696
    const/4 v0, -0x1

    iput v0, p0, Lkhb;->eE:I

    .line 687
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 1767
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 1768
    sparse-switch v0, :sswitch_data_0

    .line 1772
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1773
    :sswitch_0
    return-object p0

    .line 1778
    :sswitch_1
    iget-object v0, p0, Lkhb;->requestHeader:Lkdo;

    if-nez v0, :cond_1

    .line 1779
    new-instance v0, Lkdo;

    invoke-direct {v0}, Lkdo;-><init>()V

    iput-object v0, p0, Lkhb;->requestHeader:Lkdo;

    .line 1781
    :cond_1
    iget-object v0, p0, Lkhb;->requestHeader:Lkdo;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 1785
    :sswitch_2
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lkhb;->a:Ljava/lang/String;

    goto :goto_0

    .line 1789
    :sswitch_3
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lkhb;->b:Ljava/lang/String;

    goto :goto_0

    .line 1793
    :sswitch_4
    iget-object v0, p0, Lkhb;->c:Lkii;

    if-nez v0, :cond_2

    .line 1794
    new-instance v0, Lkii;

    invoke-direct {v0}, Lkii;-><init>()V

    iput-object v0, p0, Lkhb;->c:Lkii;

    .line 1796
    :cond_2
    iget-object v0, p0, Lkhb;->c:Lkii;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 1800
    :sswitch_5
    const/16 v0, 0x2a

    .line 1801
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v2

    .line 1802
    iget-object v0, p0, Lkhb;->d:[Ljava/lang/String;

    if-nez v0, :cond_4

    move v0, v1

    .line 1803
    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Ljava/lang/String;

    .line 1804
    if-eqz v0, :cond_3

    .line 1805
    iget-object v3, p0, Lkhb;->d:[Ljava/lang/String;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1807
    :cond_3
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_5

    .line 1808
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    .line 1809
    invoke-virtual {p1}, Llxy;->a()I

    .line 1807
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1802
    :cond_4
    iget-object v0, p0, Lkhb;->d:[Ljava/lang/String;

    array-length v0, v0

    goto :goto_1

    .line 1812
    :cond_5
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    .line 1813
    iput-object v2, p0, Lkhb;->d:[Ljava/lang/String;

    goto :goto_0

    .line 1768
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
        0x2a -> :sswitch_5
    .end sparse-switch
.end method

.method public a(Llxz;)V
    .locals 3

    .prologue
    .line 703
    iget-object v0, p0, Lkhb;->requestHeader:Lkdo;

    if-eqz v0, :cond_0

    .line 704
    const/4 v0, 0x1

    iget-object v1, p0, Lkhb;->requestHeader:Lkdo;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 706
    :cond_0
    iget-object v0, p0, Lkhb;->a:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 707
    const/4 v0, 0x2

    iget-object v1, p0, Lkhb;->a:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 709
    :cond_1
    iget-object v0, p0, Lkhb;->b:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 710
    const/4 v0, 0x3

    iget-object v1, p0, Lkhb;->b:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 712
    :cond_2
    iget-object v0, p0, Lkhb;->c:Lkii;

    if-eqz v0, :cond_3

    .line 713
    const/4 v0, 0x4

    iget-object v1, p0, Lkhb;->c:Lkii;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 715
    :cond_3
    iget-object v0, p0, Lkhb;->d:[Ljava/lang/String;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lkhb;->d:[Ljava/lang/String;

    array-length v0, v0

    if-lez v0, :cond_5

    .line 716
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lkhb;->d:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_5

    .line 717
    iget-object v1, p0, Lkhb;->d:[Ljava/lang/String;

    aget-object v1, v1, v0

    .line 718
    if-eqz v1, :cond_4

    .line 719
    const/4 v2, 0x5

    invoke-virtual {p1, v2, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 716
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 723
    :cond_5
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 724
    return-void
.end method

.method protected b()I
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 728
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 729
    iget-object v2, p0, Lkhb;->requestHeader:Lkdo;

    if-eqz v2, :cond_0

    .line 730
    const/4 v2, 0x1

    iget-object v3, p0, Lkhb;->requestHeader:Lkdo;

    .line 731
    invoke-static {v2, v3}, Llxz;->d(ILlyi;)I

    move-result v2

    add-int/2addr v0, v2

    .line 733
    :cond_0
    iget-object v2, p0, Lkhb;->a:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 734
    const/4 v2, 0x2

    iget-object v3, p0, Lkhb;->a:Ljava/lang/String;

    .line 735
    invoke-static {v2, v3}, Llxz;->b(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    .line 737
    :cond_1
    iget-object v2, p0, Lkhb;->b:Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 738
    const/4 v2, 0x3

    iget-object v3, p0, Lkhb;->b:Ljava/lang/String;

    .line 739
    invoke-static {v2, v3}, Llxz;->b(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    .line 741
    :cond_2
    iget-object v2, p0, Lkhb;->c:Lkii;

    if-eqz v2, :cond_3

    .line 742
    const/4 v2, 0x4

    iget-object v3, p0, Lkhb;->c:Lkii;

    .line 743
    invoke-static {v2, v3}, Llxz;->d(ILlyi;)I

    move-result v2

    add-int/2addr v0, v2

    .line 745
    :cond_3
    iget-object v2, p0, Lkhb;->d:[Ljava/lang/String;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lkhb;->d:[Ljava/lang/String;

    array-length v2, v2

    if-lez v2, :cond_6

    move v2, v1

    move v3, v1

    .line 748
    :goto_0
    iget-object v4, p0, Lkhb;->d:[Ljava/lang/String;

    array-length v4, v4

    if-ge v1, v4, :cond_5

    .line 749
    iget-object v4, p0, Lkhb;->d:[Ljava/lang/String;

    aget-object v4, v4, v1

    .line 750
    if-eqz v4, :cond_4

    .line 751
    add-int/lit8 v3, v3, 0x1

    .line 753
    invoke-static {v4}, Llxz;->a(Ljava/lang/String;)I

    move-result v4

    add-int/2addr v2, v4

    .line 748
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 756
    :cond_5
    add-int/2addr v0, v2

    .line 757
    mul-int/lit8 v1, v3, 0x1

    add-int/2addr v0, v1

    .line 759
    :cond_6
    return v0
.end method
