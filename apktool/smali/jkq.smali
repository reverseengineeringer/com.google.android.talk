.class public final Ljkq;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Ljkq;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile c:[Ljkq;


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 7461
    invoke-direct {p0}, Llyb;-><init>()V

    .line 8466
    iput-object v0, p0, Ljkq;->a:Ljava/lang/String;

    .line 8467
    iput-object v0, p0, Ljkq;->b:Ljava/lang/String;

    .line 8468
    iput-object v0, p0, Ljkq;->eD:Llyd;

    .line 8469
    const/4 v0, -0x1

    iput v0, p0, Ljkq;->eE:I

    .line 7463
    return-void
.end method

.method public static d()[Ljkq;
    .locals 2

    .prologue
    .line 7442
    sget-object v0, Ljkq;->c:[Ljkq;

    if-nez v0, :cond_1

    .line 7443
    sget-object v1, Llyf;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 7445
    :try_start_0
    sget-object v0, Ljkq;->c:[Ljkq;

    if-nez v0, :cond_0

    .line 7446
    const/4 v0, 0x0

    new-array v0, v0, [Ljkq;

    sput-object v0, Ljkq;->c:[Ljkq;

    .line 7448
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7450
    :cond_1
    sget-object v0, Ljkq;->c:[Ljkq;

    return-object v0

    .line 7448
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
    .line 8504
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 8505
    sparse-switch v0, :sswitch_data_0

    .line 8509
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 8510
    :sswitch_0
    return-object p0

    .line 8515
    :sswitch_1
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljkq;->a:Ljava/lang/String;

    goto :goto_0

    .line 8519
    :sswitch_2
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljkq;->b:Ljava/lang/String;

    goto :goto_0

    .line 8505
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
    .line 7476
    iget-object v0, p0, Ljkq;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 7477
    const/4 v0, 0x1

    iget-object v1, p0, Ljkq;->a:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 7479
    :cond_0
    iget-object v0, p0, Ljkq;->b:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 7480
    const/4 v0, 0x2

    iget-object v1, p0, Ljkq;->b:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 7482
    :cond_1
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 7483
    return-void
.end method

.method protected b()I
    .locals 3

    .prologue
    .line 7487
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 7488
    iget-object v1, p0, Ljkq;->a:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 7489
    const/4 v1, 0x1

    iget-object v2, p0, Ljkq;->a:Ljava/lang/String;

    .line 7490
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 7492
    :cond_0
    iget-object v1, p0, Ljkq;->b:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 7493
    const/4 v1, 0x2

    iget-object v2, p0, Ljkq;->b:Ljava/lang/String;

    .line 7494
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 7496
    :cond_1
    return v0
.end method
