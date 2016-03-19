.class public final Ljok;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Ljok;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile b:[Ljok;


# instance fields
.field public a:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1476
    invoke-direct {p0}, Llyb;-><init>()V

    .line 2481
    iput-object v0, p0, Ljok;->a:Ljava/lang/Integer;

    .line 2482
    iput-object v0, p0, Ljok;->eD:Llyd;

    .line 2483
    const/4 v0, -0x1

    iput v0, p0, Ljok;->eE:I

    .line 1478
    return-void
.end method

.method public static d()[Ljok;
    .locals 2

    .prologue
    .line 1460
    sget-object v0, Ljok;->b:[Ljok;

    if-nez v0, :cond_1

    .line 1461
    sget-object v1, Llyf;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 1463
    :try_start_0
    sget-object v0, Ljok;->b:[Ljok;

    if-nez v0, :cond_0

    .line 1464
    const/4 v0, 0x0

    new-array v0, v0, [Ljok;

    sput-object v0, Ljok;->b:[Ljok;

    .line 1466
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1468
    :cond_1
    sget-object v0, Ljok;->b:[Ljok;

    return-object v0

    .line 1466
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
    .line 2511
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 2512
    sparse-switch v0, :sswitch_data_0

    .line 2516
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2517
    :sswitch_0
    return-object p0

    .line 2522
    :sswitch_1
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Ljok;->a:Ljava/lang/Integer;

    goto :goto_0

    .line 2512
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
    .end sparse-switch
.end method

.method public a(Llxz;)V
    .locals 2

    .prologue
    .line 1490
    iget-object v0, p0, Ljok;->a:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 1491
    const/4 v0, 0x1

    iget-object v1, p0, Ljok;->a:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(II)V

    .line 1493
    :cond_0
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 1494
    return-void
.end method

.method protected b()I
    .locals 3

    .prologue
    .line 1498
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 1499
    iget-object v1, p0, Ljok;->a:Ljava/lang/Integer;

    if-eqz v1, :cond_0

    .line 1500
    const/4 v1, 0x1

    iget-object v2, p0, Ljok;->a:Ljava/lang/Integer;

    .line 1501
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Llxz;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1503
    :cond_0
    return v0
.end method
