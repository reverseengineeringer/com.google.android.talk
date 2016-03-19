.class public final Ljvf;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Ljvf;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile e:[Ljvf;


# instance fields
.field public a:Ljava/lang/Integer;

.field public b:Ljava/lang/Integer;

.field public c:Ljava/lang/Integer;

.field public d:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 3794
    invoke-direct {p0}, Llyb;-><init>()V

    .line 4799
    iput-object v0, p0, Ljvf;->a:Ljava/lang/Integer;

    .line 4800
    iput-object v0, p0, Ljvf;->b:Ljava/lang/Integer;

    .line 4801
    iput-object v0, p0, Ljvf;->c:Ljava/lang/Integer;

    .line 4802
    iput-object v0, p0, Ljvf;->d:Ljava/lang/Integer;

    .line 4803
    iput-object v0, p0, Ljvf;->eD:Llyd;

    .line 4804
    const/4 v0, -0x1

    iput v0, p0, Ljvf;->eE:I

    .line 3796
    return-void
.end method

.method public static d()[Ljvf;
    .locals 2

    .prologue
    .line 3769
    sget-object v0, Ljvf;->e:[Ljvf;

    if-nez v0, :cond_1

    .line 3770
    sget-object v1, Llyf;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 3772
    :try_start_0
    sget-object v0, Ljvf;->e:[Ljvf;

    if-nez v0, :cond_0

    .line 3773
    const/4 v0, 0x0

    new-array v0, v0, [Ljvf;

    sput-object v0, Ljvf;->e:[Ljvf;

    .line 3775
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3777
    :cond_1
    sget-object v0, Ljvf;->e:[Ljvf;

    return-object v0

    .line 3775
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
    .line 4853
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 4854
    sparse-switch v0, :sswitch_data_0

    .line 4858
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4859
    :sswitch_0
    return-object p0

    .line 4864
    :sswitch_1
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    .line 4865
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 4868
    :pswitch_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Ljvf;->a:Ljava/lang/Integer;

    goto :goto_0

    .line 4874
    :sswitch_2
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    .line 4875
    packed-switch v0, :pswitch_data_1

    goto :goto_0

    .line 4882
    :pswitch_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Ljvf;->b:Ljava/lang/Integer;

    goto :goto_0

    .line 4888
    :sswitch_3
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    .line 4889
    packed-switch v0, :pswitch_data_2

    goto :goto_0

    .line 4896
    :pswitch_2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Ljvf;->d:Ljava/lang/Integer;

    goto :goto_0

    .line 4902
    :sswitch_4
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    .line 4903
    packed-switch v0, :pswitch_data_3

    goto :goto_0

    .line 4910
    :pswitch_3
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Ljvf;->c:Ljava/lang/Integer;

    goto :goto_0

    .line 4854
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
        0x20 -> :sswitch_4
    .end sparse-switch

    .line 4865
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch

    .line 4875
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch

    .line 4889
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch

    .line 4903
    :pswitch_data_3
    .packed-switch 0x1
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method public a(Llxz;)V
    .locals 2

    .prologue
    .line 3811
    iget-object v0, p0, Ljvf;->a:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 3812
    const/4 v0, 0x1

    iget-object v1, p0, Ljvf;->a:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(II)V

    .line 3814
    :cond_0
    iget-object v0, p0, Ljvf;->b:Ljava/lang/Integer;

    if-eqz v0, :cond_1

    .line 3815
    const/4 v0, 0x2

    iget-object v1, p0, Ljvf;->b:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(II)V

    .line 3817
    :cond_1
    iget-object v0, p0, Ljvf;->d:Ljava/lang/Integer;

    if-eqz v0, :cond_2

    .line 3818
    const/4 v0, 0x3

    iget-object v1, p0, Ljvf;->d:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(II)V

    .line 3820
    :cond_2
    iget-object v0, p0, Ljvf;->c:Ljava/lang/Integer;

    if-eqz v0, :cond_3

    .line 3821
    const/4 v0, 0x4

    iget-object v1, p0, Ljvf;->c:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(II)V

    .line 3823
    :cond_3
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 3824
    return-void
.end method

.method protected b()I
    .locals 3

    .prologue
    .line 3828
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 3829
    iget-object v1, p0, Ljvf;->a:Ljava/lang/Integer;

    if-eqz v1, :cond_0

    .line 3830
    const/4 v1, 0x1

    iget-object v2, p0, Ljvf;->a:Ljava/lang/Integer;

    .line 3831
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Llxz;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 3833
    :cond_0
    iget-object v1, p0, Ljvf;->b:Ljava/lang/Integer;

    if-eqz v1, :cond_1

    .line 3834
    const/4 v1, 0x2

    iget-object v2, p0, Ljvf;->b:Ljava/lang/Integer;

    .line 3835
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Llxz;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 3837
    :cond_1
    iget-object v1, p0, Ljvf;->d:Ljava/lang/Integer;

    if-eqz v1, :cond_2

    .line 3838
    const/4 v1, 0x3

    iget-object v2, p0, Ljvf;->d:Ljava/lang/Integer;

    .line 3839
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Llxz;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 3841
    :cond_2
    iget-object v1, p0, Ljvf;->c:Ljava/lang/Integer;

    if-eqz v1, :cond_3

    .line 3842
    const/4 v1, 0x4

    iget-object v2, p0, Ljvf;->c:Ljava/lang/Integer;

    .line 3843
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Llxz;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 3845
    :cond_3
    return v0
.end method
