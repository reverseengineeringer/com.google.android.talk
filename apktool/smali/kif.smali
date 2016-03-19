.class public final Lkif;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Lkif;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile c:[Lkif;


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 476
    invoke-direct {p0}, Llyb;-><init>()V

    .line 1481
    iput-object v0, p0, Lkif;->a:Ljava/lang/String;

    .line 1482
    iput-object v0, p0, Lkif;->b:Ljava/lang/String;

    .line 1483
    iput-object v0, p0, Lkif;->eD:Llyd;

    .line 1484
    const/4 v0, -0x1

    iput v0, p0, Lkif;->eE:I

    .line 478
    return-void
.end method

.method public static d()[Lkif;
    .locals 2

    .prologue
    .line 457
    sget-object v0, Lkif;->c:[Lkif;

    if-nez v0, :cond_1

    .line 458
    sget-object v1, Llyf;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 460
    :try_start_0
    sget-object v0, Lkif;->c:[Lkif;

    if-nez v0, :cond_0

    .line 461
    const/4 v0, 0x0

    new-array v0, v0, [Lkif;

    sput-object v0, Lkif;->c:[Lkif;

    .line 463
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 465
    :cond_1
    sget-object v0, Lkif;->c:[Lkif;

    return-object v0

    .line 463
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
    .line 1519
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 1520
    sparse-switch v0, :sswitch_data_0

    .line 1524
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1525
    :sswitch_0
    return-object p0

    .line 1530
    :sswitch_1
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lkif;->a:Ljava/lang/String;

    goto :goto_0

    .line 1534
    :sswitch_2
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lkif;->b:Ljava/lang/String;

    goto :goto_0

    .line 1520
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
    .line 491
    iget-object v0, p0, Lkif;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 492
    const/4 v0, 0x1

    iget-object v1, p0, Lkif;->a:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 494
    :cond_0
    iget-object v0, p0, Lkif;->b:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 495
    const/4 v0, 0x2

    iget-object v1, p0, Lkif;->b:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 497
    :cond_1
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 498
    return-void
.end method

.method protected b()I
    .locals 3

    .prologue
    .line 502
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 503
    iget-object v1, p0, Lkif;->a:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 504
    const/4 v1, 0x1

    iget-object v2, p0, Lkif;->a:Ljava/lang/String;

    .line 505
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 507
    :cond_0
    iget-object v1, p0, Lkif;->b:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 508
    const/4 v1, 0x2

    iget-object v2, p0, Lkif;->b:Ljava/lang/String;

    .line 509
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 511
    :cond_1
    return v0
.end method
