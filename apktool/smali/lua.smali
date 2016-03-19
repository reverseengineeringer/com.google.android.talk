.class public final Llua;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Llua;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile c:[Llua;


# instance fields
.field public a:Ljava/lang/String;

.field public b:Llub;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 395
    invoke-direct {p0}, Llyb;-><init>()V

    .line 1400
    iput-object v0, p0, Llua;->a:Ljava/lang/String;

    .line 1401
    iput-object v0, p0, Llua;->b:Llub;

    .line 1402
    iput-object v0, p0, Llua;->eD:Llyd;

    .line 1403
    const/4 v0, -0x1

    iput v0, p0, Llua;->eE:I

    .line 397
    return-void
.end method

.method public static d()[Llua;
    .locals 2

    .prologue
    .line 376
    sget-object v0, Llua;->c:[Llua;

    if-nez v0, :cond_1

    .line 377
    sget-object v1, Llyf;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 379
    :try_start_0
    sget-object v0, Llua;->c:[Llua;

    if-nez v0, :cond_0

    .line 380
    const/4 v0, 0x0

    new-array v0, v0, [Llua;

    sput-object v0, Llua;->c:[Llua;

    .line 382
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 384
    :cond_1
    sget-object v0, Llua;->c:[Llua;

    return-object v0

    .line 382
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
    .line 1438
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 1439
    sparse-switch v0, :sswitch_data_0

    .line 1443
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1444
    :sswitch_0
    return-object p0

    .line 1449
    :sswitch_1
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Llua;->a:Ljava/lang/String;

    goto :goto_0

    .line 1453
    :sswitch_2
    iget-object v0, p0, Llua;->b:Llub;

    if-nez v0, :cond_1

    .line 1454
    new-instance v0, Llub;

    invoke-direct {v0}, Llub;-><init>()V

    iput-object v0, p0, Llua;->b:Llub;

    .line 1456
    :cond_1
    iget-object v0, p0, Llua;->b:Llub;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 1439
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
    .line 410
    iget-object v0, p0, Llua;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 411
    const/4 v0, 0x1

    iget-object v1, p0, Llua;->a:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 413
    :cond_0
    iget-object v0, p0, Llua;->b:Llub;

    if-eqz v0, :cond_1

    .line 414
    const/4 v0, 0x2

    iget-object v1, p0, Llua;->b:Llub;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 416
    :cond_1
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 417
    return-void
.end method

.method protected b()I
    .locals 3

    .prologue
    .line 421
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 422
    iget-object v1, p0, Llua;->a:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 423
    const/4 v1, 0x1

    iget-object v2, p0, Llua;->a:Ljava/lang/String;

    .line 424
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 426
    :cond_0
    iget-object v1, p0, Llua;->b:Llub;

    if-eqz v1, :cond_1

    .line 427
    const/4 v1, 0x2

    iget-object v2, p0, Llua;->b:Llub;

    .line 428
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 430
    :cond_1
    return v0
.end method
