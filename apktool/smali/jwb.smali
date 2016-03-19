.class public final Ljwb;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Ljwb;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile g:[Ljwb;


# instance fields
.field public a:Ljava/lang/Integer;

.field public b:Ljava/lang/Integer;

.field public c:Ljava/lang/Integer;

.field public d:Ljava/lang/String;

.field public e:[B

.field public f:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 3770
    invoke-direct {p0}, Llyb;-><init>()V

    .line 4775
    iput-object v0, p0, Ljwb;->a:Ljava/lang/Integer;

    .line 4776
    iput-object v0, p0, Ljwb;->b:Ljava/lang/Integer;

    .line 4777
    iput-object v0, p0, Ljwb;->c:Ljava/lang/Integer;

    .line 4778
    iput-object v0, p0, Ljwb;->d:Ljava/lang/String;

    .line 4779
    iput-object v0, p0, Ljwb;->e:[B

    .line 4780
    iput-object v0, p0, Ljwb;->f:Ljava/lang/Integer;

    .line 4781
    iput-object v0, p0, Ljwb;->eD:Llyd;

    .line 4782
    const/4 v0, -0x1

    iput v0, p0, Ljwb;->eE:I

    .line 3772
    return-void
.end method

.method public static d()[Ljwb;
    .locals 2

    .prologue
    .line 3739
    sget-object v0, Ljwb;->g:[Ljwb;

    if-nez v0, :cond_1

    .line 3740
    sget-object v1, Llyf;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 3742
    :try_start_0
    sget-object v0, Ljwb;->g:[Ljwb;

    if-nez v0, :cond_0

    .line 3743
    const/4 v0, 0x0

    new-array v0, v0, [Ljwb;

    sput-object v0, Ljwb;->g:[Ljwb;

    .line 3745
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3747
    :cond_1
    sget-object v0, Ljwb;->g:[Ljwb;

    return-object v0

    .line 3745
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
    .line 4845
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 4846
    sparse-switch v0, :sswitch_data_0

    .line 4850
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4851
    :sswitch_0
    return-object p0

    .line 4856
    :sswitch_1
    invoke-virtual {p1}, Llxy;->l()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Ljwb;->a:Ljava/lang/Integer;

    goto :goto_0

    .line 4860
    :sswitch_2
    invoke-virtual {p1}, Llxy;->l()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Ljwb;->b:Ljava/lang/Integer;

    goto :goto_0

    .line 4864
    :sswitch_3
    invoke-virtual {p1}, Llxy;->l()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Ljwb;->c:Ljava/lang/Integer;

    goto :goto_0

    .line 4868
    :sswitch_4
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljwb;->d:Ljava/lang/String;

    goto :goto_0

    .line 4872
    :sswitch_5
    invoke-virtual {p1}, Llxy;->k()[B

    move-result-object v0

    iput-object v0, p0, Ljwb;->e:[B

    goto :goto_0

    .line 4876
    :sswitch_6
    invoke-virtual {p1}, Llxy;->l()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Ljwb;->f:Ljava/lang/Integer;

    goto :goto_0

    .line 4846
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
        0x22 -> :sswitch_4
        0x2a -> :sswitch_5
        0x30 -> :sswitch_6
    .end sparse-switch
.end method

.method public a(Llxz;)V
    .locals 2

    .prologue
    .line 3789
    iget-object v0, p0, Ljwb;->a:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 3790
    const/4 v0, 0x1

    iget-object v1, p0, Ljwb;->a:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->c(II)V

    .line 3792
    :cond_0
    iget-object v0, p0, Ljwb;->b:Ljava/lang/Integer;

    if-eqz v0, :cond_1

    .line 3793
    const/4 v0, 0x2

    iget-object v1, p0, Ljwb;->b:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->c(II)V

    .line 3795
    :cond_1
    iget-object v0, p0, Ljwb;->c:Ljava/lang/Integer;

    if-eqz v0, :cond_2

    .line 3796
    const/4 v0, 0x3

    iget-object v1, p0, Ljwb;->c:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->c(II)V

    .line 3798
    :cond_2
    iget-object v0, p0, Ljwb;->d:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 3799
    const/4 v0, 0x4

    iget-object v1, p0, Ljwb;->d:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 3801
    :cond_3
    iget-object v0, p0, Ljwb;->e:[B

    if-eqz v0, :cond_4

    .line 3802
    const/4 v0, 0x5

    iget-object v1, p0, Ljwb;->e:[B

    invoke-virtual {p1, v0, v1}, Llxz;->a(I[B)V

    .line 3804
    :cond_4
    iget-object v0, p0, Ljwb;->f:Ljava/lang/Integer;

    if-eqz v0, :cond_5

    .line 3805
    const/4 v0, 0x6

    iget-object v1, p0, Ljwb;->f:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->c(II)V

    .line 3807
    :cond_5
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 3808
    return-void
.end method

.method protected b()I
    .locals 3

    .prologue
    .line 3812
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 3813
    iget-object v1, p0, Ljwb;->a:Ljava/lang/Integer;

    if-eqz v1, :cond_0

    .line 3814
    const/4 v1, 0x1

    iget-object v2, p0, Ljwb;->a:Ljava/lang/Integer;

    .line 3815
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Llxz;->f(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 3817
    :cond_0
    iget-object v1, p0, Ljwb;->b:Ljava/lang/Integer;

    if-eqz v1, :cond_1

    .line 3818
    const/4 v1, 0x2

    iget-object v2, p0, Ljwb;->b:Ljava/lang/Integer;

    .line 3819
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Llxz;->f(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 3821
    :cond_1
    iget-object v1, p0, Ljwb;->c:Ljava/lang/Integer;

    if-eqz v1, :cond_2

    .line 3822
    const/4 v1, 0x3

    iget-object v2, p0, Ljwb;->c:Ljava/lang/Integer;

    .line 3823
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Llxz;->f(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 3825
    :cond_2
    iget-object v1, p0, Ljwb;->d:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 3826
    const/4 v1, 0x4

    iget-object v2, p0, Ljwb;->d:Ljava/lang/String;

    .line 3827
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 3829
    :cond_3
    iget-object v1, p0, Ljwb;->e:[B

    if-eqz v1, :cond_4

    .line 3830
    const/4 v1, 0x5

    iget-object v2, p0, Ljwb;->e:[B

    .line 3831
    invoke-static {v1, v2}, Llxz;->b(I[B)I

    move-result v1

    add-int/2addr v0, v1

    .line 3833
    :cond_4
    iget-object v1, p0, Ljwb;->f:Ljava/lang/Integer;

    if-eqz v1, :cond_5

    .line 3834
    const/4 v1, 0x6

    iget-object v2, p0, Ljwb;->f:Ljava/lang/Integer;

    .line 3835
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Llxz;->f(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 3837
    :cond_5
    return v0
.end method
