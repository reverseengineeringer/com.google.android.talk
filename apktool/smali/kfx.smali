.class public final Lkfx;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Lkfx;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile d:[Lkfx;


# instance fields
.field public a:Lkfy;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 33790
    invoke-direct {p0}, Llyb;-><init>()V

    .line 34795
    iput-object v0, p0, Lkfx;->a:Lkfy;

    .line 34796
    iput-object v0, p0, Lkfx;->b:Ljava/lang/String;

    .line 34797
    iput-object v0, p0, Lkfx;->c:Ljava/lang/Integer;

    .line 34798
    iput-object v0, p0, Lkfx;->eD:Llyd;

    .line 34799
    const/4 v0, -0x1

    iput v0, p0, Lkfx;->eE:I

    .line 33792
    return-void
.end method

.method public static d()[Lkfx;
    .locals 2

    .prologue
    .line 33768
    sget-object v0, Lkfx;->d:[Lkfx;

    if-nez v0, :cond_1

    .line 33769
    sget-object v1, Llyf;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 33771
    :try_start_0
    sget-object v0, Lkfx;->d:[Lkfx;

    if-nez v0, :cond_0

    .line 33772
    const/4 v0, 0x0

    new-array v0, v0, [Lkfx;

    sput-object v0, Lkfx;->d:[Lkfx;

    .line 33774
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33776
    :cond_1
    sget-object v0, Lkfx;->d:[Lkfx;

    return-object v0

    .line 33774
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
    .line 34841
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 34842
    sparse-switch v0, :sswitch_data_0

    .line 34846
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 34847
    :sswitch_0
    return-object p0

    .line 34852
    :sswitch_1
    iget-object v0, p0, Lkfx;->a:Lkfy;

    if-nez v0, :cond_1

    .line 34853
    new-instance v0, Lkfy;

    invoke-direct {v0}, Lkfy;-><init>()V

    iput-object v0, p0, Lkfx;->a:Lkfy;

    .line 34855
    :cond_1
    iget-object v0, p0, Lkfx;->a:Lkfy;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 34859
    :sswitch_2
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lkfx;->b:Ljava/lang/String;

    goto :goto_0

    .line 34863
    :sswitch_3
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    .line 34864
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 34866
    :pswitch_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lkfx;->c:Ljava/lang/Integer;

    goto :goto_0

    .line 34842
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x18 -> :sswitch_3
    .end sparse-switch

    .line 34864
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public a(Llxz;)V
    .locals 2

    .prologue
    .line 33806
    iget-object v0, p0, Lkfx;->a:Lkfy;

    if-eqz v0, :cond_0

    .line 33807
    const/4 v0, 0x1

    iget-object v1, p0, Lkfx;->a:Lkfy;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 33809
    :cond_0
    iget-object v0, p0, Lkfx;->b:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 33810
    const/4 v0, 0x2

    iget-object v1, p0, Lkfx;->b:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 33812
    :cond_1
    iget-object v0, p0, Lkfx;->c:Ljava/lang/Integer;

    if-eqz v0, :cond_2

    .line 33813
    const/4 v0, 0x3

    iget-object v1, p0, Lkfx;->c:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(II)V

    .line 33815
    :cond_2
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 33816
    return-void
.end method

.method protected b()I
    .locals 3

    .prologue
    .line 33820
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 33821
    iget-object v1, p0, Lkfx;->a:Lkfy;

    if-eqz v1, :cond_0

    .line 33822
    const/4 v1, 0x1

    iget-object v2, p0, Lkfx;->a:Lkfy;

    .line 33823
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 33825
    :cond_0
    iget-object v1, p0, Lkfx;->b:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 33826
    const/4 v1, 0x2

    iget-object v2, p0, Lkfx;->b:Ljava/lang/String;

    .line 33827
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 33829
    :cond_1
    iget-object v1, p0, Lkfx;->c:Ljava/lang/Integer;

    if-eqz v1, :cond_2

    .line 33830
    const/4 v1, 0x3

    iget-object v2, p0, Lkfx;->c:Ljava/lang/Integer;

    .line 33831
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Llxz;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 33833
    :cond_2
    return v0
.end method
