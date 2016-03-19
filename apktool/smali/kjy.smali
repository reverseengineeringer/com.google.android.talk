.class public final Lkjy;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Lkjy;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile c:[Lkjy;


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 460
    invoke-direct {p0}, Llyb;-><init>()V

    .line 1465
    iput-object v0, p0, Lkjy;->a:Ljava/lang/String;

    .line 1466
    iput-object v0, p0, Lkjy;->b:Ljava/lang/String;

    .line 1467
    iput-object v0, p0, Lkjy;->eD:Llyd;

    .line 1468
    const/4 v0, -0x1

    iput v0, p0, Lkjy;->eE:I

    .line 462
    return-void
.end method

.method public static d()[Lkjy;
    .locals 2

    .prologue
    .line 441
    sget-object v0, Lkjy;->c:[Lkjy;

    if-nez v0, :cond_1

    .line 442
    sget-object v1, Llyf;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 444
    :try_start_0
    sget-object v0, Lkjy;->c:[Lkjy;

    if-nez v0, :cond_0

    .line 445
    const/4 v0, 0x0

    new-array v0, v0, [Lkjy;

    sput-object v0, Lkjy;->c:[Lkjy;

    .line 447
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 449
    :cond_1
    sget-object v0, Lkjy;->c:[Lkjy;

    return-object v0

    .line 447
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
    .line 1503
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 1504
    sparse-switch v0, :sswitch_data_0

    .line 1508
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1509
    :sswitch_0
    return-object p0

    .line 1514
    :sswitch_1
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lkjy;->a:Ljava/lang/String;

    goto :goto_0

    .line 1518
    :sswitch_2
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lkjy;->b:Ljava/lang/String;

    goto :goto_0

    .line 1504
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
    .line 475
    iget-object v0, p0, Lkjy;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 476
    const/4 v0, 0x1

    iget-object v1, p0, Lkjy;->a:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 478
    :cond_0
    iget-object v0, p0, Lkjy;->b:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 479
    const/4 v0, 0x2

    iget-object v1, p0, Lkjy;->b:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 481
    :cond_1
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 482
    return-void
.end method

.method protected b()I
    .locals 3

    .prologue
    .line 486
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 487
    iget-object v1, p0, Lkjy;->a:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 488
    const/4 v1, 0x1

    iget-object v2, p0, Lkjy;->a:Ljava/lang/String;

    .line 489
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 491
    :cond_0
    iget-object v1, p0, Lkjy;->b:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 492
    const/4 v1, 0x2

    iget-object v2, p0, Lkjy;->b:Ljava/lang/String;

    .line 493
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 495
    :cond_1
    return v0
.end method
