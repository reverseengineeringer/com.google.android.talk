.class public final Ljiv;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Ljiv;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile g:[Ljiv;


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljir;

.field public c:Ljava/lang/Integer;

.field public d:Ljit;

.field public e:Ljiw;

.field public f:Ljis;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 282
    invoke-direct {p0}, Llyb;-><init>()V

    .line 1287
    iput-object v0, p0, Ljiv;->a:Ljava/lang/String;

    .line 1288
    iput-object v0, p0, Ljiv;->b:Ljir;

    .line 1289
    iput-object v0, p0, Ljiv;->c:Ljava/lang/Integer;

    .line 1290
    iput-object v0, p0, Ljiv;->d:Ljit;

    .line 1291
    iput-object v0, p0, Ljiv;->e:Ljiw;

    .line 1292
    iput-object v0, p0, Ljiv;->f:Ljis;

    .line 1293
    iput-object v0, p0, Ljiv;->eD:Llyd;

    .line 1294
    const/4 v0, -0x1

    iput v0, p0, Ljiv;->eE:I

    .line 284
    return-void
.end method

.method public static d()[Ljiv;
    .locals 2

    .prologue
    .line 251
    sget-object v0, Ljiv;->g:[Ljiv;

    if-nez v0, :cond_1

    .line 252
    sget-object v1, Llyf;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 254
    :try_start_0
    sget-object v0, Ljiv;->g:[Ljiv;

    if-nez v0, :cond_0

    .line 255
    const/4 v0, 0x0

    new-array v0, v0, [Ljiv;

    sput-object v0, Ljiv;->g:[Ljiv;

    .line 257
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 259
    :cond_1
    sget-object v0, Ljiv;->g:[Ljiv;

    return-object v0

    .line 257
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
    .line 1357
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 1358
    sparse-switch v0, :sswitch_data_0

    .line 1362
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1363
    :sswitch_0
    return-object p0

    .line 1368
    :sswitch_1
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljiv;->a:Ljava/lang/String;

    goto :goto_0

    .line 1372
    :sswitch_2
    iget-object v0, p0, Ljiv;->b:Ljir;

    if-nez v0, :cond_1

    .line 1373
    new-instance v0, Ljir;

    invoke-direct {v0}, Ljir;-><init>()V

    iput-object v0, p0, Ljiv;->b:Ljir;

    .line 1375
    :cond_1
    iget-object v0, p0, Ljiv;->b:Ljir;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 1379
    :sswitch_3
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    .line 1380
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 1386
    :pswitch_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Ljiv;->c:Ljava/lang/Integer;

    goto :goto_0

    .line 1392
    :sswitch_4
    iget-object v0, p0, Ljiv;->d:Ljit;

    if-nez v0, :cond_2

    .line 1393
    new-instance v0, Ljit;

    invoke-direct {v0}, Ljit;-><init>()V

    iput-object v0, p0, Ljiv;->d:Ljit;

    .line 1395
    :cond_2
    iget-object v0, p0, Ljiv;->d:Ljit;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 1399
    :sswitch_5
    iget-object v0, p0, Ljiv;->e:Ljiw;

    if-nez v0, :cond_3

    .line 1400
    new-instance v0, Ljiw;

    invoke-direct {v0}, Ljiw;-><init>()V

    iput-object v0, p0, Ljiv;->e:Ljiw;

    .line 1402
    :cond_3
    iget-object v0, p0, Ljiv;->e:Ljiw;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 1406
    :sswitch_6
    iget-object v0, p0, Ljiv;->f:Ljis;

    if-nez v0, :cond_4

    .line 1407
    new-instance v0, Ljis;

    invoke-direct {v0}, Ljis;-><init>()V

    iput-object v0, p0, Ljiv;->f:Ljis;

    .line 1409
    :cond_4
    iget-object v0, p0, Ljiv;->f:Ljis;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 1358
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x18 -> :sswitch_3
        0x22 -> :sswitch_4
        0x2a -> :sswitch_5
        0x32 -> :sswitch_6
    .end sparse-switch

    .line 1380
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public a(Llxz;)V
    .locals 2

    .prologue
    .line 301
    iget-object v0, p0, Ljiv;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 302
    const/4 v0, 0x1

    iget-object v1, p0, Ljiv;->a:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 304
    :cond_0
    iget-object v0, p0, Ljiv;->b:Ljir;

    if-eqz v0, :cond_1

    .line 305
    const/4 v0, 0x2

    iget-object v1, p0, Ljiv;->b:Ljir;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 307
    :cond_1
    iget-object v0, p0, Ljiv;->c:Ljava/lang/Integer;

    if-eqz v0, :cond_2

    .line 308
    const/4 v0, 0x3

    iget-object v1, p0, Ljiv;->c:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(II)V

    .line 310
    :cond_2
    iget-object v0, p0, Ljiv;->d:Ljit;

    if-eqz v0, :cond_3

    .line 311
    const/4 v0, 0x4

    iget-object v1, p0, Ljiv;->d:Ljit;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 313
    :cond_3
    iget-object v0, p0, Ljiv;->e:Ljiw;

    if-eqz v0, :cond_4

    .line 314
    const/4 v0, 0x5

    iget-object v1, p0, Ljiv;->e:Ljiw;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 316
    :cond_4
    iget-object v0, p0, Ljiv;->f:Ljis;

    if-eqz v0, :cond_5

    .line 317
    const/4 v0, 0x6

    iget-object v1, p0, Ljiv;->f:Ljis;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 319
    :cond_5
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 320
    return-void
.end method

.method protected b()I
    .locals 3

    .prologue
    .line 324
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 325
    iget-object v1, p0, Ljiv;->a:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 326
    const/4 v1, 0x1

    iget-object v2, p0, Ljiv;->a:Ljava/lang/String;

    .line 327
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 329
    :cond_0
    iget-object v1, p0, Ljiv;->b:Ljir;

    if-eqz v1, :cond_1

    .line 330
    const/4 v1, 0x2

    iget-object v2, p0, Ljiv;->b:Ljir;

    .line 331
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 333
    :cond_1
    iget-object v1, p0, Ljiv;->c:Ljava/lang/Integer;

    if-eqz v1, :cond_2

    .line 334
    const/4 v1, 0x3

    iget-object v2, p0, Ljiv;->c:Ljava/lang/Integer;

    .line 335
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Llxz;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 337
    :cond_2
    iget-object v1, p0, Ljiv;->d:Ljit;

    if-eqz v1, :cond_3

    .line 338
    const/4 v1, 0x4

    iget-object v2, p0, Ljiv;->d:Ljit;

    .line 339
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 341
    :cond_3
    iget-object v1, p0, Ljiv;->e:Ljiw;

    if-eqz v1, :cond_4

    .line 342
    const/4 v1, 0x5

    iget-object v2, p0, Ljiv;->e:Ljiw;

    .line 343
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 345
    :cond_4
    iget-object v1, p0, Ljiv;->f:Ljis;

    if-eqz v1, :cond_5

    .line 346
    const/4 v1, 0x6

    iget-object v2, p0, Ljiv;->f:Ljis;

    .line 347
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 349
    :cond_5
    return v0
.end method
