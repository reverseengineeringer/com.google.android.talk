.class public final Livw;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Livw;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile c:[Livw;


# instance fields
.field public a:Ljava/lang/Integer;

.field public b:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 4740
    invoke-direct {p0}, Llyb;-><init>()V

    .line 5745
    iput-object v0, p0, Livw;->a:Ljava/lang/Integer;

    .line 5746
    iput-object v0, p0, Livw;->b:Ljava/lang/String;

    .line 5747
    iput-object v0, p0, Livw;->eD:Llyd;

    .line 5748
    const/4 v0, -0x1

    iput v0, p0, Livw;->eE:I

    .line 4742
    return-void
.end method

.method public static d()[Livw;
    .locals 2

    .prologue
    .line 4721
    sget-object v0, Livw;->c:[Livw;

    if-nez v0, :cond_1

    .line 4722
    sget-object v1, Llyf;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 4724
    :try_start_0
    sget-object v0, Livw;->c:[Livw;

    if-nez v0, :cond_0

    .line 4725
    const/4 v0, 0x0

    new-array v0, v0, [Livw;

    sput-object v0, Livw;->c:[Livw;

    .line 4727
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4729
    :cond_1
    sget-object v0, Livw;->c:[Livw;

    return-object v0

    .line 4727
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
    .line 5783
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 5784
    sparse-switch v0, :sswitch_data_0

    .line 5788
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 5789
    :sswitch_0
    return-object p0

    .line 5794
    :sswitch_1
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    .line 5795
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 5798
    :pswitch_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Livw;->a:Ljava/lang/Integer;

    goto :goto_0

    .line 5804
    :sswitch_2
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Livw;->b:Ljava/lang/String;

    goto :goto_0

    .line 5784
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x12 -> :sswitch_2
    .end sparse-switch

    .line 5795
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public a(Llxz;)V
    .locals 2

    .prologue
    .line 4755
    iget-object v0, p0, Livw;->a:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 4756
    const/4 v0, 0x1

    iget-object v1, p0, Livw;->a:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(II)V

    .line 4758
    :cond_0
    iget-object v0, p0, Livw;->b:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 4759
    const/4 v0, 0x2

    iget-object v1, p0, Livw;->b:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 4761
    :cond_1
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 4762
    return-void
.end method

.method protected b()I
    .locals 3

    .prologue
    .line 4766
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 4767
    iget-object v1, p0, Livw;->a:Ljava/lang/Integer;

    if-eqz v1, :cond_0

    .line 4768
    const/4 v1, 0x1

    iget-object v2, p0, Livw;->a:Ljava/lang/Integer;

    .line 4769
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Llxz;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 4771
    :cond_0
    iget-object v1, p0, Livw;->b:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 4772
    const/4 v1, 0x2

    iget-object v2, p0, Livw;->b:Ljava/lang/String;

    .line 4773
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4775
    :cond_1
    return v0
.end method
