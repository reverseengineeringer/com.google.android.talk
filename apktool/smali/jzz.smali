.class public final Ljzz;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Ljzz;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile c:[Ljzz;


# instance fields
.field public a:Ljava/lang/Integer;

.field public b:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 3739
    invoke-direct {p0}, Llyb;-><init>()V

    .line 4744
    iput-object v0, p0, Ljzz;->a:Ljava/lang/Integer;

    .line 4745
    iput-object v0, p0, Ljzz;->b:Ljava/lang/String;

    .line 4746
    iput-object v0, p0, Ljzz;->eD:Llyd;

    .line 4747
    const/4 v0, -0x1

    iput v0, p0, Ljzz;->eE:I

    .line 3741
    return-void
.end method

.method public static d()[Ljzz;
    .locals 2

    .prologue
    .line 3720
    sget-object v0, Ljzz;->c:[Ljzz;

    if-nez v0, :cond_1

    .line 3721
    sget-object v1, Llyf;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 3723
    :try_start_0
    sget-object v0, Ljzz;->c:[Ljzz;

    if-nez v0, :cond_0

    .line 3724
    const/4 v0, 0x0

    new-array v0, v0, [Ljzz;

    sput-object v0, Ljzz;->c:[Ljzz;

    .line 3726
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3728
    :cond_1
    sget-object v0, Ljzz;->c:[Ljzz;

    return-object v0

    .line 3726
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
    .line 4782
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 4783
    sparse-switch v0, :sswitch_data_0

    .line 4787
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4788
    :sswitch_0
    return-object p0

    .line 4793
    :sswitch_1
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    .line 4794
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 4799
    :pswitch_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Ljzz;->a:Ljava/lang/Integer;

    goto :goto_0

    .line 4805
    :sswitch_2
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljzz;->b:Ljava/lang/String;

    goto :goto_0

    .line 4783
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x12 -> :sswitch_2
    .end sparse-switch

    .line 4794
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public a(Llxz;)V
    .locals 2

    .prologue
    .line 3754
    iget-object v0, p0, Ljzz;->a:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 3755
    const/4 v0, 0x1

    iget-object v1, p0, Ljzz;->a:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(II)V

    .line 3757
    :cond_0
    iget-object v0, p0, Ljzz;->b:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 3758
    const/4 v0, 0x2

    iget-object v1, p0, Ljzz;->b:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 3760
    :cond_1
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 3761
    return-void
.end method

.method protected b()I
    .locals 3

    .prologue
    .line 3765
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 3766
    iget-object v1, p0, Ljzz;->a:Ljava/lang/Integer;

    if-eqz v1, :cond_0

    .line 3767
    const/4 v1, 0x1

    iget-object v2, p0, Ljzz;->a:Ljava/lang/Integer;

    .line 3768
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Llxz;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 3770
    :cond_0
    iget-object v1, p0, Ljzz;->b:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 3771
    const/4 v1, 0x2

    iget-object v2, p0, Ljzz;->b:Ljava/lang/String;

    .line 3772
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 3774
    :cond_1
    return v0
.end method
