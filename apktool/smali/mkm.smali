.class public final Lmkm;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Lmkm;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile d:[Lmkm;


# instance fields
.field public a:Ljava/lang/Integer;

.field public b:Lmkj;

.field public c:[Lmkj;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 715
    invoke-direct {p0}, Llyb;-><init>()V

    .line 1720
    iput-object v1, p0, Lmkm;->a:Ljava/lang/Integer;

    .line 1721
    iput-object v1, p0, Lmkm;->b:Lmkj;

    .line 1722
    invoke-static {}, Lmkj;->d()[Lmkj;

    move-result-object v0

    iput-object v0, p0, Lmkm;->c:[Lmkj;

    .line 1723
    iput-object v1, p0, Lmkm;->eD:Llyd;

    .line 1724
    const/4 v0, -0x1

    iput v0, p0, Lmkm;->eE:I

    .line 717
    return-void
.end method

.method public static d()[Lmkm;
    .locals 2

    .prologue
    .line 693
    sget-object v0, Lmkm;->d:[Lmkm;

    if-nez v0, :cond_1

    .line 694
    sget-object v1, Llyf;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 696
    :try_start_0
    sget-object v0, Lmkm;->d:[Lmkm;

    if-nez v0, :cond_0

    .line 697
    const/4 v0, 0x0

    new-array v0, v0, [Lmkm;

    sput-object v0, Lmkm;->d:[Lmkm;

    .line 699
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 701
    :cond_1
    sget-object v0, Lmkm;->d:[Lmkm;

    return-object v0

    .line 699
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 1776
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 1777
    sparse-switch v0, :sswitch_data_0

    .line 1781
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1782
    :sswitch_0
    return-object p0

    .line 1787
    :sswitch_1
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    .line 1788
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 1797
    :pswitch_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lmkm;->a:Ljava/lang/Integer;

    goto :goto_0

    .line 1803
    :sswitch_2
    iget-object v0, p0, Lmkm;->b:Lmkj;

    if-nez v0, :cond_1

    .line 1804
    new-instance v0, Lmkj;

    invoke-direct {v0}, Lmkj;-><init>()V

    iput-object v0, p0, Lmkm;->b:Lmkj;

    .line 1806
    :cond_1
    iget-object v0, p0, Lmkm;->b:Lmkj;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 1810
    :sswitch_3
    const/16 v0, 0x1a

    .line 1811
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v2

    .line 1812
    iget-object v0, p0, Lmkm;->c:[Lmkj;

    if-nez v0, :cond_3

    move v0, v1

    .line 1813
    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Lmkj;

    .line 1815
    if-eqz v0, :cond_2

    .line 1816
    iget-object v3, p0, Lmkm;->c:[Lmkj;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1818
    :cond_2
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_4

    .line 1819
    new-instance v3, Lmkj;

    invoke-direct {v3}, Lmkj;-><init>()V

    aput-object v3, v2, v0

    .line 1820
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Llxy;->a(Llyi;)V

    .line 1821
    invoke-virtual {p1}, Llxy;->a()I

    .line 1818
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1812
    :cond_3
    iget-object v0, p0, Lmkm;->c:[Lmkj;

    array-length v0, v0

    goto :goto_1

    .line 1824
    :cond_4
    new-instance v3, Lmkj;

    invoke-direct {v3}, Lmkj;-><init>()V

    aput-object v3, v2, v0

    .line 1825
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    .line 1826
    iput-object v2, p0, Lmkm;->c:[Lmkj;

    goto :goto_0

    .line 1777
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
    .end sparse-switch

    .line 1788
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public a(Llxz;)V
    .locals 3

    .prologue
    .line 731
    iget-object v0, p0, Lmkm;->a:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 732
    const/4 v0, 0x1

    iget-object v1, p0, Lmkm;->a:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(II)V

    .line 734
    :cond_0
    iget-object v0, p0, Lmkm;->b:Lmkj;

    if-eqz v0, :cond_1

    .line 735
    const/4 v0, 0x2

    iget-object v1, p0, Lmkm;->b:Lmkj;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 737
    :cond_1
    iget-object v0, p0, Lmkm;->c:[Lmkj;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lmkm;->c:[Lmkj;

    array-length v0, v0

    if-lez v0, :cond_3

    .line 738
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lmkm;->c:[Lmkj;

    array-length v1, v1

    if-ge v0, v1, :cond_3

    .line 739
    iget-object v1, p0, Lmkm;->c:[Lmkj;

    aget-object v1, v1, v0

    .line 740
    if-eqz v1, :cond_2

    .line 741
    const/4 v2, 0x3

    invoke-virtual {p1, v2, v1}, Llxz;->b(ILlyi;)V

    .line 738
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 745
    :cond_3
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 746
    return-void
.end method

.method protected b()I
    .locals 5

    .prologue
    .line 750
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 751
    iget-object v1, p0, Lmkm;->a:Ljava/lang/Integer;

    if-eqz v1, :cond_0

    .line 752
    const/4 v1, 0x1

    iget-object v2, p0, Lmkm;->a:Ljava/lang/Integer;

    .line 753
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Llxz;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 755
    :cond_0
    iget-object v1, p0, Lmkm;->b:Lmkj;

    if-eqz v1, :cond_1

    .line 756
    const/4 v1, 0x2

    iget-object v2, p0, Lmkm;->b:Lmkj;

    .line 757
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 759
    :cond_1
    iget-object v1, p0, Lmkm;->c:[Lmkj;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lmkm;->c:[Lmkj;

    array-length v1, v1

    if-lez v1, :cond_4

    .line 760
    const/4 v1, 0x0

    move v4, v1

    move v1, v0

    move v0, v4

    :goto_0
    iget-object v2, p0, Lmkm;->c:[Lmkj;

    array-length v2, v2

    if-ge v0, v2, :cond_3

    .line 761
    iget-object v2, p0, Lmkm;->c:[Lmkj;

    aget-object v2, v2, v0

    .line 762
    if-eqz v2, :cond_2

    .line 763
    const/4 v3, 0x3

    .line 764
    invoke-static {v3, v2}, Llxz;->d(ILlyi;)I

    move-result v2

    add-int/2addr v1, v2

    .line 760
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    move v0, v1

    .line 768
    :cond_4
    return v0
.end method
