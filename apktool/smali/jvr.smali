.class public final Ljvr;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Ljvr;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile e:[Ljvr;


# instance fields
.field public a:Ljava/lang/Integer;

.field public b:Ljava/lang/Integer;

.field public c:Ljava/lang/Integer;

.field public d:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1768
    invoke-direct {p0}, Llyb;-><init>()V

    .line 2773
    iput-object v0, p0, Ljvr;->a:Ljava/lang/Integer;

    .line 2774
    iput-object v0, p0, Ljvr;->b:Ljava/lang/Integer;

    .line 2775
    iput-object v0, p0, Ljvr;->c:Ljava/lang/Integer;

    .line 2776
    iput-object v0, p0, Ljvr;->d:Ljava/lang/String;

    .line 2777
    iput-object v0, p0, Ljvr;->eD:Llyd;

    .line 2778
    const/4 v0, -0x1

    iput v0, p0, Ljvr;->eE:I

    .line 1770
    return-void
.end method

.method public static d()[Ljvr;
    .locals 2

    .prologue
    .line 1743
    sget-object v0, Ljvr;->e:[Ljvr;

    if-nez v0, :cond_1

    .line 1744
    sget-object v1, Llyf;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 1746
    :try_start_0
    sget-object v0, Ljvr;->e:[Ljvr;

    if-nez v0, :cond_0

    .line 1747
    const/4 v0, 0x0

    new-array v0, v0, [Ljvr;

    sput-object v0, Ljvr;->e:[Ljvr;

    .line 1749
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1751
    :cond_1
    sget-object v0, Ljvr;->e:[Ljvr;

    return-object v0

    .line 1749
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
    .locals 1

    .prologue
    .line 2827
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 2828
    sparse-switch v0, :sswitch_data_0

    .line 2832
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2833
    :sswitch_0
    return-object p0

    .line 2838
    :sswitch_1
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Ljvr;->a:Ljava/lang/Integer;

    goto :goto_0

    .line 2842
    :sswitch_2
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Ljvr;->b:Ljava/lang/Integer;

    goto :goto_0

    .line 2846
    :sswitch_3
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Ljvr;->c:Ljava/lang/Integer;

    goto :goto_0

    .line 2850
    :sswitch_4
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljvr;->d:Ljava/lang/String;

    goto :goto_0

    .line 2828
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
        0x22 -> :sswitch_4
    .end sparse-switch
.end method

.method public a(Llxz;)V
    .locals 2

    .prologue
    .line 1785
    iget-object v0, p0, Ljvr;->a:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 1786
    const/4 v0, 0x1

    iget-object v1, p0, Ljvr;->a:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(II)V

    .line 1788
    :cond_0
    iget-object v0, p0, Ljvr;->b:Ljava/lang/Integer;

    if-eqz v0, :cond_1

    .line 1789
    const/4 v0, 0x2

    iget-object v1, p0, Ljvr;->b:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(II)V

    .line 1791
    :cond_1
    iget-object v0, p0, Ljvr;->c:Ljava/lang/Integer;

    if-eqz v0, :cond_2

    .line 1792
    const/4 v0, 0x3

    iget-object v1, p0, Ljvr;->c:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(II)V

    .line 1794
    :cond_2
    iget-object v0, p0, Ljvr;->d:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 1795
    const/4 v0, 0x4

    iget-object v1, p0, Ljvr;->d:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 1797
    :cond_3
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 1798
    return-void
.end method

.method protected b()I
    .locals 3

    .prologue
    .line 1802
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 1803
    iget-object v1, p0, Ljvr;->a:Ljava/lang/Integer;

    if-eqz v1, :cond_0

    .line 1804
    const/4 v1, 0x1

    iget-object v2, p0, Ljvr;->a:Ljava/lang/Integer;

    .line 1805
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Llxz;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1807
    :cond_0
    iget-object v1, p0, Ljvr;->b:Ljava/lang/Integer;

    if-eqz v1, :cond_1

    .line 1808
    const/4 v1, 0x2

    iget-object v2, p0, Ljvr;->b:Ljava/lang/Integer;

    .line 1809
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Llxz;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1811
    :cond_1
    iget-object v1, p0, Ljvr;->c:Ljava/lang/Integer;

    if-eqz v1, :cond_2

    .line 1812
    const/4 v1, 0x3

    iget-object v2, p0, Ljvr;->c:Ljava/lang/Integer;

    .line 1813
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Llxz;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1815
    :cond_2
    iget-object v1, p0, Ljvr;->d:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 1816
    const/4 v1, 0x4

    iget-object v2, p0, Ljvr;->d:Ljava/lang/String;

    .line 1817
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1819
    :cond_3
    return v0
.end method
