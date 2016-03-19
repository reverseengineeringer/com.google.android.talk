.class public final Litk;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Litk;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile e:[Litk;


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Litl;

.field public d:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 786
    invoke-direct {p0}, Llyb;-><init>()V

    .line 1791
    iput-object v0, p0, Litk;->a:Ljava/lang/String;

    .line 1792
    iput-object v0, p0, Litk;->b:Ljava/lang/String;

    .line 1793
    iput-object v0, p0, Litk;->c:Litl;

    .line 1794
    iput-object v0, p0, Litk;->d:Ljava/lang/String;

    .line 1795
    iput-object v0, p0, Litk;->eD:Llyd;

    .line 1796
    const/4 v0, -0x1

    iput v0, p0, Litk;->eE:I

    .line 788
    return-void
.end method

.method public static d()[Litk;
    .locals 2

    .prologue
    .line 761
    sget-object v0, Litk;->e:[Litk;

    if-nez v0, :cond_1

    .line 762
    sget-object v1, Llyf;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 764
    :try_start_0
    sget-object v0, Litk;->e:[Litk;

    if-nez v0, :cond_0

    .line 765
    const/4 v0, 0x0

    new-array v0, v0, [Litk;

    sput-object v0, Litk;->e:[Litk;

    .line 767
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 769
    :cond_1
    sget-object v0, Litk;->e:[Litk;

    return-object v0

    .line 767
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
    .line 1845
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 1846
    sparse-switch v0, :sswitch_data_0

    .line 1850
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1851
    :sswitch_0
    return-object p0

    .line 1856
    :sswitch_1
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Litk;->a:Ljava/lang/String;

    goto :goto_0

    .line 1860
    :sswitch_2
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Litk;->b:Ljava/lang/String;

    goto :goto_0

    .line 1864
    :sswitch_3
    iget-object v0, p0, Litk;->c:Litl;

    if-nez v0, :cond_1

    .line 1865
    new-instance v0, Litl;

    invoke-direct {v0}, Litl;-><init>()V

    iput-object v0, p0, Litk;->c:Litl;

    .line 1867
    :cond_1
    iget-object v0, p0, Litk;->c:Litl;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 1871
    :sswitch_4
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Litk;->d:Ljava/lang/String;

    goto :goto_0

    .line 1846
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
    .end sparse-switch
.end method

.method public a(Llxz;)V
    .locals 2

    .prologue
    .line 803
    iget-object v0, p0, Litk;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 804
    const/4 v0, 0x1

    iget-object v1, p0, Litk;->a:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 806
    :cond_0
    iget-object v0, p0, Litk;->b:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 807
    const/4 v0, 0x2

    iget-object v1, p0, Litk;->b:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 809
    :cond_1
    iget-object v0, p0, Litk;->c:Litl;

    if-eqz v0, :cond_2

    .line 810
    const/4 v0, 0x3

    iget-object v1, p0, Litk;->c:Litl;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 812
    :cond_2
    iget-object v0, p0, Litk;->d:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 813
    const/4 v0, 0x4

    iget-object v1, p0, Litk;->d:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 815
    :cond_3
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 816
    return-void
.end method

.method protected b()I
    .locals 3

    .prologue
    .line 820
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 821
    iget-object v1, p0, Litk;->a:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 822
    const/4 v1, 0x1

    iget-object v2, p0, Litk;->a:Ljava/lang/String;

    .line 823
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 825
    :cond_0
    iget-object v1, p0, Litk;->b:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 826
    const/4 v1, 0x2

    iget-object v2, p0, Litk;->b:Ljava/lang/String;

    .line 827
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 829
    :cond_1
    iget-object v1, p0, Litk;->c:Litl;

    if-eqz v1, :cond_2

    .line 830
    const/4 v1, 0x3

    iget-object v2, p0, Litk;->c:Litl;

    .line 831
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 833
    :cond_2
    iget-object v1, p0, Litk;->d:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 834
    const/4 v1, 0x4

    iget-object v2, p0, Litk;->d:Ljava/lang/String;

    .line 835
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 837
    :cond_3
    return v0
.end method
