.class public final Lkiv;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Lkiv;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile c:[Lkiv;


# instance fields
.field public a:Ljava/lang/Integer;

.field public b:Lkjs;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 2451
    invoke-direct {p0}, Llyb;-><init>()V

    .line 3456
    iput-object v0, p0, Lkiv;->a:Ljava/lang/Integer;

    .line 3457
    iput-object v0, p0, Lkiv;->b:Lkjs;

    .line 3458
    iput-object v0, p0, Lkiv;->eD:Llyd;

    .line 3459
    const/4 v0, -0x1

    iput v0, p0, Lkiv;->eE:I

    .line 2453
    return-void
.end method

.method public static d()[Lkiv;
    .locals 2

    .prologue
    .line 2432
    sget-object v0, Lkiv;->c:[Lkiv;

    if-nez v0, :cond_1

    .line 2433
    sget-object v1, Llyf;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 2435
    :try_start_0
    sget-object v0, Lkiv;->c:[Lkiv;

    if-nez v0, :cond_0

    .line 2436
    const/4 v0, 0x0

    new-array v0, v0, [Lkiv;

    sput-object v0, Lkiv;->c:[Lkiv;

    .line 2438
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2440
    :cond_1
    sget-object v0, Lkiv;->c:[Lkiv;

    return-object v0

    .line 2438
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
    .line 3494
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 3495
    sparse-switch v0, :sswitch_data_0

    .line 3499
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3500
    :sswitch_0
    return-object p0

    .line 3505
    :sswitch_1
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    .line 3506
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 3511
    :pswitch_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lkiv;->a:Ljava/lang/Integer;

    goto :goto_0

    .line 3517
    :sswitch_2
    iget-object v0, p0, Lkiv;->b:Lkjs;

    if-nez v0, :cond_1

    .line 3518
    new-instance v0, Lkjs;

    invoke-direct {v0}, Lkjs;-><init>()V

    iput-object v0, p0, Lkiv;->b:Lkjs;

    .line 3520
    :cond_1
    iget-object v0, p0, Lkiv;->b:Lkjs;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 3495
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x12 -> :sswitch_2
    .end sparse-switch

    .line 3506
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public a(Llxz;)V
    .locals 2

    .prologue
    .line 2466
    iget-object v0, p0, Lkiv;->a:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 2467
    const/4 v0, 0x1

    iget-object v1, p0, Lkiv;->a:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(II)V

    .line 2469
    :cond_0
    iget-object v0, p0, Lkiv;->b:Lkjs;

    if-eqz v0, :cond_1

    .line 2470
    const/4 v0, 0x2

    iget-object v1, p0, Lkiv;->b:Lkjs;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 2472
    :cond_1
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 2473
    return-void
.end method

.method protected b()I
    .locals 3

    .prologue
    .line 2477
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 2478
    iget-object v1, p0, Lkiv;->a:Ljava/lang/Integer;

    if-eqz v1, :cond_0

    .line 2479
    const/4 v1, 0x1

    iget-object v2, p0, Lkiv;->a:Ljava/lang/Integer;

    .line 2480
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Llxz;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 2482
    :cond_0
    iget-object v1, p0, Lkiv;->b:Lkjs;

    if-eqz v1, :cond_1

    .line 2483
    const/4 v1, 0x2

    iget-object v2, p0, Lkiv;->b:Lkjs;

    .line 2484
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2486
    :cond_1
    return v0
.end method
