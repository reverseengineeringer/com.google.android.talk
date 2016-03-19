.class public final Lixk;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Lixk;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile d:[Lixk;


# instance fields
.field public a:Lixc;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 6382
    invoke-direct {p0}, Llyb;-><init>()V

    .line 7387
    iput-object v0, p0, Lixk;->a:Lixc;

    .line 7388
    iput-object v0, p0, Lixk;->b:Ljava/lang/String;

    .line 7389
    iput-object v0, p0, Lixk;->c:Ljava/lang/String;

    .line 7390
    iput-object v0, p0, Lixk;->eD:Llyd;

    .line 7391
    const/4 v0, -0x1

    iput v0, p0, Lixk;->eE:I

    .line 6384
    return-void
.end method

.method public static d()[Lixk;
    .locals 2

    .prologue
    .line 6360
    sget-object v0, Lixk;->d:[Lixk;

    if-nez v0, :cond_1

    .line 6361
    sget-object v1, Llyf;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 6363
    :try_start_0
    sget-object v0, Lixk;->d:[Lixk;

    if-nez v0, :cond_0

    .line 6364
    const/4 v0, 0x0

    new-array v0, v0, [Lixk;

    sput-object v0, Lixk;->d:[Lixk;

    .line 6366
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6368
    :cond_1
    sget-object v0, Lixk;->d:[Lixk;

    return-object v0

    .line 6366
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
    .line 7433
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 7434
    sparse-switch v0, :sswitch_data_0

    .line 7438
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 7439
    :sswitch_0
    return-object p0

    .line 7444
    :sswitch_1
    iget-object v0, p0, Lixk;->a:Lixc;

    if-nez v0, :cond_1

    .line 7445
    new-instance v0, Lixc;

    invoke-direct {v0}, Lixc;-><init>()V

    iput-object v0, p0, Lixk;->a:Lixc;

    .line 7447
    :cond_1
    iget-object v0, p0, Lixk;->a:Lixc;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 7451
    :sswitch_2
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lixk;->b:Ljava/lang/String;

    goto :goto_0

    .line 7455
    :sswitch_3
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lixk;->c:Ljava/lang/String;

    goto :goto_0

    .line 7434
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
    .end sparse-switch
.end method

.method public a(Llxz;)V
    .locals 2

    .prologue
    .line 6398
    iget-object v0, p0, Lixk;->a:Lixc;

    if-eqz v0, :cond_0

    .line 6399
    const/4 v0, 0x1

    iget-object v1, p0, Lixk;->a:Lixc;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 6401
    :cond_0
    iget-object v0, p0, Lixk;->b:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 6402
    const/4 v0, 0x2

    iget-object v1, p0, Lixk;->b:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 6404
    :cond_1
    iget-object v0, p0, Lixk;->c:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 6405
    const/4 v0, 0x3

    iget-object v1, p0, Lixk;->c:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 6407
    :cond_2
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 6408
    return-void
.end method

.method protected b()I
    .locals 3

    .prologue
    .line 6412
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 6413
    iget-object v1, p0, Lixk;->a:Lixc;

    if-eqz v1, :cond_0

    .line 6414
    const/4 v1, 0x1

    iget-object v2, p0, Lixk;->a:Lixc;

    .line 6415
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 6417
    :cond_0
    iget-object v1, p0, Lixk;->b:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 6418
    const/4 v1, 0x2

    iget-object v2, p0, Lixk;->b:Ljava/lang/String;

    .line 6419
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 6421
    :cond_1
    iget-object v1, p0, Lixk;->c:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 6422
    const/4 v1, 0x3

    iget-object v2, p0, Lixk;->c:Ljava/lang/String;

    .line 6423
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 6425
    :cond_2
    return v0
.end method
