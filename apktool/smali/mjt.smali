.class public final Lmjt;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Lmjt;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile d:[Lmjt;


# instance fields
.field public a:Lmjy;

.field public b:Lmjr;

.field public c:Lmju;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 360
    invoke-direct {p0}, Llyb;-><init>()V

    .line 1365
    iput-object v0, p0, Lmjt;->a:Lmjy;

    .line 1366
    iput-object v0, p0, Lmjt;->b:Lmjr;

    .line 1367
    iput-object v0, p0, Lmjt;->c:Lmju;

    .line 1368
    iput-object v0, p0, Lmjt;->eD:Llyd;

    .line 1369
    const/4 v0, -0x1

    iput v0, p0, Lmjt;->eE:I

    .line 362
    return-void
.end method

.method public static d()[Lmjt;
    .locals 2

    .prologue
    .line 338
    sget-object v0, Lmjt;->d:[Lmjt;

    if-nez v0, :cond_1

    .line 339
    sget-object v1, Llyf;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 341
    :try_start_0
    sget-object v0, Lmjt;->d:[Lmjt;

    if-nez v0, :cond_0

    .line 342
    const/4 v0, 0x0

    new-array v0, v0, [Lmjt;

    sput-object v0, Lmjt;->d:[Lmjt;

    .line 344
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 346
    :cond_1
    sget-object v0, Lmjt;->d:[Lmjt;

    return-object v0

    .line 344
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
    .line 1411
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 1412
    sparse-switch v0, :sswitch_data_0

    .line 1416
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1417
    :sswitch_0
    return-object p0

    .line 1422
    :sswitch_1
    iget-object v0, p0, Lmjt;->a:Lmjy;

    if-nez v0, :cond_1

    .line 1423
    new-instance v0, Lmjy;

    invoke-direct {v0}, Lmjy;-><init>()V

    iput-object v0, p0, Lmjt;->a:Lmjy;

    .line 1425
    :cond_1
    iget-object v0, p0, Lmjt;->a:Lmjy;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 1429
    :sswitch_2
    iget-object v0, p0, Lmjt;->b:Lmjr;

    if-nez v0, :cond_2

    .line 1430
    new-instance v0, Lmjr;

    invoke-direct {v0}, Lmjr;-><init>()V

    iput-object v0, p0, Lmjt;->b:Lmjr;

    .line 1432
    :cond_2
    iget-object v0, p0, Lmjt;->b:Lmjr;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 1436
    :sswitch_3
    iget-object v0, p0, Lmjt;->c:Lmju;

    if-nez v0, :cond_3

    .line 1437
    new-instance v0, Lmju;

    invoke-direct {v0}, Lmju;-><init>()V

    iput-object v0, p0, Lmjt;->c:Lmju;

    .line 1439
    :cond_3
    iget-object v0, p0, Lmjt;->c:Lmju;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 1412
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x22 -> :sswitch_3
    .end sparse-switch
.end method

.method public a(Llxz;)V
    .locals 2

    .prologue
    .line 376
    iget-object v0, p0, Lmjt;->a:Lmjy;

    if-eqz v0, :cond_0

    .line 377
    const/4 v0, 0x1

    iget-object v1, p0, Lmjt;->a:Lmjy;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 379
    :cond_0
    iget-object v0, p0, Lmjt;->b:Lmjr;

    if-eqz v0, :cond_1

    .line 380
    const/4 v0, 0x2

    iget-object v1, p0, Lmjt;->b:Lmjr;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 382
    :cond_1
    iget-object v0, p0, Lmjt;->c:Lmju;

    if-eqz v0, :cond_2

    .line 383
    const/4 v0, 0x4

    iget-object v1, p0, Lmjt;->c:Lmju;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 385
    :cond_2
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 386
    return-void
.end method

.method protected b()I
    .locals 3

    .prologue
    .line 390
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 391
    iget-object v1, p0, Lmjt;->a:Lmjy;

    if-eqz v1, :cond_0

    .line 392
    const/4 v1, 0x1

    iget-object v2, p0, Lmjt;->a:Lmjy;

    .line 393
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 395
    :cond_0
    iget-object v1, p0, Lmjt;->b:Lmjr;

    if-eqz v1, :cond_1

    .line 396
    const/4 v1, 0x2

    iget-object v2, p0, Lmjt;->b:Lmjr;

    .line 397
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 399
    :cond_1
    iget-object v1, p0, Lmjt;->c:Lmju;

    if-eqz v1, :cond_2

    .line 400
    const/4 v1, 0x4

    iget-object v2, p0, Lmjt;->c:Lmju;

    .line 401
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 403
    :cond_2
    return v0
.end method
