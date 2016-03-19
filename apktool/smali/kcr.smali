.class public final Lkcr;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Lkcr;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile c:[Lkcr;


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 2465
    invoke-direct {p0}, Llyb;-><init>()V

    .line 3470
    iput-object v0, p0, Lkcr;->a:Ljava/lang/String;

    .line 3471
    iput-object v0, p0, Lkcr;->b:Ljava/lang/String;

    .line 3472
    iput-object v0, p0, Lkcr;->eD:Llyd;

    .line 3473
    const/4 v0, -0x1

    iput v0, p0, Lkcr;->eE:I

    .line 2467
    return-void
.end method

.method public static d()[Lkcr;
    .locals 2

    .prologue
    .line 2446
    sget-object v0, Lkcr;->c:[Lkcr;

    if-nez v0, :cond_1

    .line 2447
    sget-object v1, Llyf;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 2449
    :try_start_0
    sget-object v0, Lkcr;->c:[Lkcr;

    if-nez v0, :cond_0

    .line 2450
    const/4 v0, 0x0

    new-array v0, v0, [Lkcr;

    sput-object v0, Lkcr;->c:[Lkcr;

    .line 2452
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2454
    :cond_1
    sget-object v0, Lkcr;->c:[Lkcr;

    return-object v0

    .line 2452
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
    .line 3508
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 3509
    sparse-switch v0, :sswitch_data_0

    .line 3513
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3514
    :sswitch_0
    return-object p0

    .line 3519
    :sswitch_1
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lkcr;->b:Ljava/lang/String;

    goto :goto_0

    .line 3523
    :sswitch_2
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lkcr;->a:Ljava/lang/String;

    goto :goto_0

    .line 3509
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
    .line 2480
    iget-object v0, p0, Lkcr;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 2481
    const/4 v0, 0x1

    iget-object v1, p0, Lkcr;->b:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 2483
    :cond_0
    iget-object v0, p0, Lkcr;->a:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 2484
    const/4 v0, 0x2

    iget-object v1, p0, Lkcr;->a:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 2486
    :cond_1
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 2487
    return-void
.end method

.method protected b()I
    .locals 3

    .prologue
    .line 2491
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 2492
    iget-object v1, p0, Lkcr;->b:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 2493
    const/4 v1, 0x1

    iget-object v2, p0, Lkcr;->b:Ljava/lang/String;

    .line 2494
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2496
    :cond_0
    iget-object v1, p0, Lkcr;->a:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 2497
    const/4 v1, 0x2

    iget-object v2, p0, Lkcr;->a:Ljava/lang/String;

    .line 2498
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2500
    :cond_1
    return v0
.end method
