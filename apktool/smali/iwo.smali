.class public final Liwo;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Liwo;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile c:[Liwo;


# instance fields
.field public a:Lixc;

.field public b:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 8442
    invoke-direct {p0}, Llyb;-><init>()V

    .line 9447
    iput-object v0, p0, Liwo;->a:Lixc;

    .line 9448
    iput-object v0, p0, Liwo;->b:Ljava/lang/String;

    .line 9449
    iput-object v0, p0, Liwo;->eD:Llyd;

    .line 9450
    const/4 v0, -0x1

    iput v0, p0, Liwo;->eE:I

    .line 8444
    return-void
.end method

.method public static d()[Liwo;
    .locals 2

    .prologue
    .line 8423
    sget-object v0, Liwo;->c:[Liwo;

    if-nez v0, :cond_1

    .line 8424
    sget-object v1, Llyf;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 8426
    :try_start_0
    sget-object v0, Liwo;->c:[Liwo;

    if-nez v0, :cond_0

    .line 8427
    const/4 v0, 0x0

    new-array v0, v0, [Liwo;

    sput-object v0, Liwo;->c:[Liwo;

    .line 8429
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8431
    :cond_1
    sget-object v0, Liwo;->c:[Liwo;

    return-object v0

    .line 8429
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
    .line 9485
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 9486
    sparse-switch v0, :sswitch_data_0

    .line 9490
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 9491
    :sswitch_0
    return-object p0

    .line 9496
    :sswitch_1
    iget-object v0, p0, Liwo;->a:Lixc;

    if-nez v0, :cond_1

    .line 9497
    new-instance v0, Lixc;

    invoke-direct {v0}, Lixc;-><init>()V

    iput-object v0, p0, Liwo;->a:Lixc;

    .line 9499
    :cond_1
    iget-object v0, p0, Liwo;->a:Lixc;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 9503
    :sswitch_2
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Liwo;->b:Ljava/lang/String;

    goto :goto_0

    .line 9486
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
    .line 8457
    iget-object v0, p0, Liwo;->a:Lixc;

    if-eqz v0, :cond_0

    .line 8458
    const/4 v0, 0x1

    iget-object v1, p0, Liwo;->a:Lixc;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 8460
    :cond_0
    iget-object v0, p0, Liwo;->b:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 8461
    const/4 v0, 0x2

    iget-object v1, p0, Liwo;->b:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 8463
    :cond_1
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 8464
    return-void
.end method

.method protected b()I
    .locals 3

    .prologue
    .line 8468
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 8469
    iget-object v1, p0, Liwo;->a:Lixc;

    if-eqz v1, :cond_0

    .line 8470
    const/4 v1, 0x1

    iget-object v2, p0, Liwo;->a:Lixc;

    .line 8471
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 8473
    :cond_0
    iget-object v1, p0, Liwo;->b:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 8474
    const/4 v1, 0x2

    iget-object v2, p0, Liwo;->b:Ljava/lang/String;

    .line 8475
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 8477
    :cond_1
    return v0
.end method
