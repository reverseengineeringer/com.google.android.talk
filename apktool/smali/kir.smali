.class public final Lkir;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Lkir;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile c:[Lkir;


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1740
    invoke-direct {p0}, Llyb;-><init>()V

    .line 2745
    iput-object v0, p0, Lkir;->a:Ljava/lang/String;

    .line 2746
    iput-object v0, p0, Lkir;->b:Ljava/lang/String;

    .line 2747
    iput-object v0, p0, Lkir;->eD:Llyd;

    .line 2748
    const/4 v0, -0x1

    iput v0, p0, Lkir;->eE:I

    .line 1742
    return-void
.end method

.method public static d()[Lkir;
    .locals 2

    .prologue
    .line 1721
    sget-object v0, Lkir;->c:[Lkir;

    if-nez v0, :cond_1

    .line 1722
    sget-object v1, Llyf;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 1724
    :try_start_0
    sget-object v0, Lkir;->c:[Lkir;

    if-nez v0, :cond_0

    .line 1725
    const/4 v0, 0x0

    new-array v0, v0, [Lkir;

    sput-object v0, Lkir;->c:[Lkir;

    .line 1727
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1729
    :cond_1
    sget-object v0, Lkir;->c:[Lkir;

    return-object v0

    .line 1727
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
    .line 2783
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 2784
    sparse-switch v0, :sswitch_data_0

    .line 2788
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2789
    :sswitch_0
    return-object p0

    .line 2794
    :sswitch_1
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lkir;->a:Ljava/lang/String;

    goto :goto_0

    .line 2798
    :sswitch_2
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lkir;->b:Ljava/lang/String;

    goto :goto_0

    .line 2784
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
    .end sparse-switch
.end method

.method public a(Llxz;)V
    .locals 2

    .prologue
    .line 1755
    iget-object v0, p0, Lkir;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1756
    const/4 v0, 0x1

    iget-object v1, p0, Lkir;->a:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 1758
    :cond_0
    iget-object v0, p0, Lkir;->b:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 1759
    const/4 v0, 0x2

    iget-object v1, p0, Lkir;->b:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 1761
    :cond_1
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 1762
    return-void
.end method

.method protected b()I
    .locals 3

    .prologue
    .line 1766
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 1767
    iget-object v1, p0, Lkir;->a:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1768
    const/4 v1, 0x1

    iget-object v2, p0, Lkir;->a:Ljava/lang/String;

    .line 1769
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1771
    :cond_0
    iget-object v1, p0, Lkir;->b:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 1772
    const/4 v1, 0x2

    iget-object v2, p0, Lkir;->b:Ljava/lang/String;

    .line 1773
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1775
    :cond_1
    return v0
.end method
