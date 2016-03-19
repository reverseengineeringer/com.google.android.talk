.class public final Lmbk;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Lmbk;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile d:[Lmbk;


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 807
    invoke-direct {p0}, Llyb;-><init>()V

    .line 808
    iput-object v1, p0, Lmbk;->a:Ljava/lang/String;

    .line 809
    iput-object v1, p0, Lmbk;->b:Ljava/lang/String;

    .line 810
    const/high16 v0, -0x80000000

    iput v0, p0, Lmbk;->c:I

    .line 811
    iput-object v1, p0, Lmbk;->eD:Llyd;

    .line 812
    const/4 v0, -0x1

    iput v0, p0, Lmbk;->eE:I

    .line 813
    return-void
.end method

.method public static d()[Lmbk;
    .locals 2

    .prologue
    .line 785
    sget-object v0, Lmbk;->d:[Lmbk;

    if-nez v0, :cond_1

    .line 786
    sget-object v1, Llyf;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 788
    :try_start_0
    sget-object v0, Lmbk;->d:[Lmbk;

    if-nez v0, :cond_0

    .line 789
    const/4 v0, 0x0

    new-array v0, v0, [Lmbk;

    sput-object v0, Lmbk;->d:[Lmbk;

    .line 791
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 793
    :cond_1
    sget-object v0, Lmbk;->d:[Lmbk;

    return-object v0

    .line 791
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
    .line 1853
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 1854
    sparse-switch v0, :sswitch_data_0

    .line 1858
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1859
    :sswitch_0
    return-object p0

    .line 1864
    :sswitch_1
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmbk;->a:Ljava/lang/String;

    goto :goto_0

    .line 1868
    :sswitch_2
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmbk;->b:Ljava/lang/String;

    goto :goto_0

    .line 1872
    :sswitch_3
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    .line 1873
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 1877
    :pswitch_0
    iput v0, p0, Lmbk;->c:I

    goto :goto_0

    .line 1854
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x18 -> :sswitch_3
    .end sparse-switch

    .line 1873
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public a(Llxz;)V
    .locals 2

    .prologue
    .line 818
    iget-object v0, p0, Lmbk;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 819
    const/4 v0, 0x1

    iget-object v1, p0, Lmbk;->a:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 821
    :cond_0
    iget-object v0, p0, Lmbk;->b:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 822
    const/4 v0, 0x2

    iget-object v1, p0, Lmbk;->b:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 824
    :cond_1
    iget v0, p0, Lmbk;->c:I

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_2

    .line 825
    const/4 v0, 0x3

    iget v1, p0, Lmbk;->c:I

    invoke-virtual {p1, v0, v1}, Llxz;->a(II)V

    .line 827
    :cond_2
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 828
    return-void
.end method

.method protected b()I
    .locals 3

    .prologue
    .line 832
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 833
    iget-object v1, p0, Lmbk;->a:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 834
    const/4 v1, 0x1

    iget-object v2, p0, Lmbk;->a:Ljava/lang/String;

    .line 835
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 837
    :cond_0
    iget-object v1, p0, Lmbk;->b:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 838
    const/4 v1, 0x2

    iget-object v2, p0, Lmbk;->b:Ljava/lang/String;

    .line 839
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 841
    :cond_1
    iget v1, p0, Lmbk;->c:I

    const/high16 v2, -0x80000000

    if-eq v1, v2, :cond_2

    .line 842
    const/4 v1, 0x3

    iget v2, p0, Lmbk;->c:I

    .line 843
    invoke-static {v1, v2}, Llxz;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 845
    :cond_2
    return v0
.end method
