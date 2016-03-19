.class public final Ljot;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Ljot;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile c:[Ljot;


# instance fields
.field public a:[Ljox;

.field public b:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 730
    invoke-direct {p0}, Llyb;-><init>()V

    .line 1735
    invoke-static {}, Ljox;->d()[Ljox;

    move-result-object v0

    iput-object v0, p0, Ljot;->a:[Ljox;

    .line 1736
    iput-object v1, p0, Ljot;->b:Ljava/lang/Integer;

    .line 1737
    iput-object v1, p0, Ljot;->eD:Llyd;

    .line 1738
    const/4 v0, -0x1

    iput v0, p0, Ljot;->eE:I

    .line 732
    return-void
.end method

.method public static d()[Ljot;
    .locals 2

    .prologue
    .line 711
    sget-object v0, Ljot;->c:[Ljot;

    if-nez v0, :cond_1

    .line 712
    sget-object v1, Llyf;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 714
    :try_start_0
    sget-object v0, Ljot;->c:[Ljot;

    if-nez v0, :cond_0

    .line 715
    const/4 v0, 0x0

    new-array v0, v0, [Ljot;

    sput-object v0, Ljot;->c:[Ljot;

    .line 717
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 719
    :cond_1
    sget-object v0, Ljot;->c:[Ljot;

    return-object v0

    .line 717
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

    .line 1783
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 1784
    sparse-switch v0, :sswitch_data_0

    .line 1788
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1789
    :sswitch_0
    return-object p0

    .line 1794
    :sswitch_1
    const/16 v0, 0xa

    .line 1795
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v2

    .line 1796
    iget-object v0, p0, Ljot;->a:[Ljox;

    if-nez v0, :cond_2

    move v0, v1

    .line 1797
    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Ljox;

    .line 1799
    if-eqz v0, :cond_1

    .line 1800
    iget-object v3, p0, Ljot;->a:[Ljox;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1802
    :cond_1
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_3

    .line 1803
    new-instance v3, Ljox;

    invoke-direct {v3}, Ljox;-><init>()V

    aput-object v3, v2, v0

    .line 1804
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Llxy;->a(Llyi;)V

    .line 1805
    invoke-virtual {p1}, Llxy;->a()I

    .line 1802
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1796
    :cond_2
    iget-object v0, p0, Ljot;->a:[Ljox;

    array-length v0, v0

    goto :goto_1

    .line 1808
    :cond_3
    new-instance v3, Ljox;

    invoke-direct {v3}, Ljox;-><init>()V

    aput-object v3, v2, v0

    .line 1809
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    .line 1810
    iput-object v2, p0, Ljot;->a:[Ljox;

    goto :goto_0

    .line 1814
    :sswitch_2
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Ljot;->b:Ljava/lang/Integer;

    goto :goto_0

    .line 1784
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x10 -> :sswitch_2
    .end sparse-switch
.end method

.method public a(Llxz;)V
    .locals 3

    .prologue
    .line 745
    iget-object v0, p0, Ljot;->a:[Ljox;

    if-eqz v0, :cond_1

    iget-object v0, p0, Ljot;->a:[Ljox;

    array-length v0, v0

    if-lez v0, :cond_1

    .line 746
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Ljot;->a:[Ljox;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 747
    iget-object v1, p0, Ljot;->a:[Ljox;

    aget-object v1, v1, v0

    .line 748
    if-eqz v1, :cond_0

    .line 749
    const/4 v2, 0x1

    invoke-virtual {p1, v2, v1}, Llxz;->b(ILlyi;)V

    .line 746
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 753
    :cond_1
    iget-object v0, p0, Ljot;->b:Ljava/lang/Integer;

    if-eqz v0, :cond_2

    .line 754
    const/4 v0, 0x2

    iget-object v1, p0, Ljot;->b:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(II)V

    .line 756
    :cond_2
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 757
    return-void
.end method

.method protected b()I
    .locals 4

    .prologue
    .line 761
    invoke-super {p0}, Llyb;->b()I

    move-result v1

    .line 762
    iget-object v0, p0, Ljot;->a:[Ljox;

    if-eqz v0, :cond_1

    iget-object v0, p0, Ljot;->a:[Ljox;

    array-length v0, v0

    if-lez v0, :cond_1

    .line 763
    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Ljot;->a:[Ljox;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 764
    iget-object v2, p0, Ljot;->a:[Ljox;

    aget-object v2, v2, v0

    .line 765
    if-eqz v2, :cond_0

    .line 766
    const/4 v3, 0x1

    .line 767
    invoke-static {v3, v2}, Llxz;->d(ILlyi;)I

    move-result v2

    add-int/2addr v1, v2

    .line 763
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 771
    :cond_1
    iget-object v0, p0, Ljot;->b:Ljava/lang/Integer;

    if-eqz v0, :cond_2

    .line 772
    const/4 v0, 0x2

    iget-object v2, p0, Ljot;->b:Ljava/lang/Integer;

    .line 773
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v0, v2}, Llxz;->e(II)I

    move-result v0

    add-int/2addr v1, v0

    .line 775
    :cond_2
    return v1
.end method
