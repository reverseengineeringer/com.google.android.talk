.class public final Ljjl;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Ljjl;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile c:[Ljjl;


# instance fields
.field public a:Ljjm;

.field public b:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 6418
    invoke-direct {p0}, Llyb;-><init>()V

    .line 7423
    iput-object v0, p0, Ljjl;->a:Ljjm;

    .line 7424
    iput-object v0, p0, Ljjl;->b:Ljava/lang/String;

    .line 7425
    iput-object v0, p0, Ljjl;->eD:Llyd;

    .line 7426
    const/4 v0, -0x1

    iput v0, p0, Ljjl;->eE:I

    .line 6420
    return-void
.end method

.method public static d()[Ljjl;
    .locals 2

    .prologue
    .line 6399
    sget-object v0, Ljjl;->c:[Ljjl;

    if-nez v0, :cond_1

    .line 6400
    sget-object v1, Llyf;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 6402
    :try_start_0
    sget-object v0, Ljjl;->c:[Ljjl;

    if-nez v0, :cond_0

    .line 6403
    const/4 v0, 0x0

    new-array v0, v0, [Ljjl;

    sput-object v0, Ljjl;->c:[Ljjl;

    .line 6405
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6407
    :cond_1
    sget-object v0, Ljjl;->c:[Ljjl;

    return-object v0

    .line 6405
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
    .line 7461
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 7462
    sparse-switch v0, :sswitch_data_0

    .line 7466
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 7467
    :sswitch_0
    return-object p0

    .line 7472
    :sswitch_1
    iget-object v0, p0, Ljjl;->a:Ljjm;

    if-nez v0, :cond_1

    .line 7473
    new-instance v0, Ljjm;

    invoke-direct {v0}, Ljjm;-><init>()V

    iput-object v0, p0, Ljjl;->a:Ljjm;

    .line 7475
    :cond_1
    iget-object v0, p0, Ljjl;->a:Ljjm;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 7479
    :sswitch_2
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljjl;->b:Ljava/lang/String;

    goto :goto_0

    .line 7462
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
    .line 6433
    iget-object v0, p0, Ljjl;->a:Ljjm;

    if-eqz v0, :cond_0

    .line 6434
    const/4 v0, 0x1

    iget-object v1, p0, Ljjl;->a:Ljjm;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 6436
    :cond_0
    iget-object v0, p0, Ljjl;->b:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 6437
    const/4 v0, 0x2

    iget-object v1, p0, Ljjl;->b:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 6439
    :cond_1
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 6440
    return-void
.end method

.method protected b()I
    .locals 3

    .prologue
    .line 6444
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 6445
    iget-object v1, p0, Ljjl;->a:Ljjm;

    if-eqz v1, :cond_0

    .line 6446
    const/4 v1, 0x1

    iget-object v2, p0, Ljjl;->a:Ljjm;

    .line 6447
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 6449
    :cond_0
    iget-object v1, p0, Ljjl;->b:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 6450
    const/4 v1, 0x2

    iget-object v2, p0, Ljjl;->b:Ljava/lang/String;

    .line 6451
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 6453
    :cond_1
    return v0
.end method
