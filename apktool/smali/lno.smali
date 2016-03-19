.class public final Llno;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Llno;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile b:[Llno;


# instance fields
.field public a:Llmo;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1761
    invoke-direct {p0}, Llyb;-><init>()V

    .line 2766
    iput-object v0, p0, Llno;->a:Llmo;

    .line 2767
    iput-object v0, p0, Llno;->eD:Llyd;

    .line 2768
    const/4 v0, -0x1

    iput v0, p0, Llno;->eE:I

    .line 1763
    return-void
.end method

.method public static d()[Llno;
    .locals 2

    .prologue
    .line 1745
    sget-object v0, Llno;->b:[Llno;

    if-nez v0, :cond_1

    .line 1746
    sget-object v1, Llyf;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 1748
    :try_start_0
    sget-object v0, Llno;->b:[Llno;

    if-nez v0, :cond_0

    .line 1749
    const/4 v0, 0x0

    new-array v0, v0, [Llno;

    sput-object v0, Llno;->b:[Llno;

    .line 1751
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1753
    :cond_1
    sget-object v0, Llno;->b:[Llno;

    return-object v0

    .line 1751
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
    .line 2796
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 2797
    sparse-switch v0, :sswitch_data_0

    .line 2801
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2802
    :sswitch_0
    return-object p0

    .line 2807
    :sswitch_1
    iget-object v0, p0, Llno;->a:Llmo;

    if-nez v0, :cond_1

    .line 2808
    new-instance v0, Llmo;

    invoke-direct {v0}, Llmo;-><init>()V

    iput-object v0, p0, Llno;->a:Llmo;

    .line 2810
    :cond_1
    iget-object v0, p0, Llno;->a:Llmo;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 2797
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
    .end sparse-switch
.end method

.method public a(Llxz;)V
    .locals 2

    .prologue
    .line 1775
    iget-object v0, p0, Llno;->a:Llmo;

    if-eqz v0, :cond_0

    .line 1776
    const/4 v0, 0x1

    iget-object v1, p0, Llno;->a:Llmo;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 1778
    :cond_0
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 1779
    return-void
.end method

.method protected b()I
    .locals 3

    .prologue
    .line 1783
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 1784
    iget-object v1, p0, Llno;->a:Llmo;

    if-eqz v1, :cond_0

    .line 1785
    const/4 v1, 0x1

    iget-object v2, p0, Llno;->a:Llmo;

    .line 1786
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1788
    :cond_0
    return v0
.end method
