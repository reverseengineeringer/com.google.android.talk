.class public final Ljvg;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Ljvg;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile g:[Ljvg;


# instance fields
.field public a:I

.field public b:Ljava/lang/Integer;

.field public c:Ljvh;

.field public d:I

.field public e:I

.field public f:Ljvi;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/high16 v1, -0x80000000

    const/4 v0, 0x0

    .line 254
    invoke-direct {p0}, Llyb;-><init>()V

    .line 255
    iput v1, p0, Ljvg;->a:I

    .line 256
    iput-object v0, p0, Ljvg;->b:Ljava/lang/Integer;

    .line 257
    iput-object v0, p0, Ljvg;->c:Ljvh;

    .line 258
    iput v1, p0, Ljvg;->d:I

    .line 259
    iput v1, p0, Ljvg;->e:I

    .line 260
    iput-object v0, p0, Ljvg;->f:Ljvi;

    .line 261
    iput-object v0, p0, Ljvg;->eD:Llyd;

    .line 262
    const/4 v0, -0x1

    iput v0, p0, Ljvg;->eE:I

    .line 263
    return-void
.end method

.method public static d()[Ljvg;
    .locals 2

    .prologue
    .line 223
    sget-object v0, Ljvg;->g:[Ljvg;

    if-nez v0, :cond_1

    .line 224
    sget-object v1, Llyf;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 226
    :try_start_0
    sget-object v0, Ljvg;->g:[Ljvg;

    if-nez v0, :cond_0

    .line 227
    const/4 v0, 0x0

    new-array v0, v0, [Ljvg;

    sput-object v0, Ljvg;->g:[Ljvg;

    .line 229
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 231
    :cond_1
    sget-object v0, Ljvg;->g:[Ljvg;

    return-object v0

    .line 229
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
    .line 1324
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 1325
    sparse-switch v0, :sswitch_data_0

    .line 1329
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1330
    :sswitch_0
    return-object p0

    .line 1335
    :sswitch_1
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    .line 1336
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 1349
    :pswitch_0
    iput v0, p0, Ljvg;->a:I

    goto :goto_0

    .line 1355
    :sswitch_2
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Ljvg;->b:Ljava/lang/Integer;

    goto :goto_0

    .line 1359
    :sswitch_3
    iget-object v0, p0, Ljvg;->c:Ljvh;

    if-nez v0, :cond_1

    .line 1360
    new-instance v0, Ljvh;

    invoke-direct {v0}, Ljvh;-><init>()V

    iput-object v0, p0, Ljvg;->c:Ljvh;

    .line 1362
    :cond_1
    iget-object v0, p0, Ljvg;->c:Ljvh;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 1366
    :sswitch_4
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    .line 1367
    packed-switch v0, :pswitch_data_1

    goto :goto_0

    .line 1371
    :pswitch_1
    iput v0, p0, Ljvg;->d:I

    goto :goto_0

    .line 1377
    :sswitch_5
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    .line 1378
    packed-switch v0, :pswitch_data_2

    goto :goto_0

    .line 1385
    :pswitch_2
    iput v0, p0, Ljvg;->e:I

    goto :goto_0

    .line 1391
    :sswitch_6
    iget-object v0, p0, Ljvg;->f:Ljvi;

    if-nez v0, :cond_2

    .line 1392
    new-instance v0, Ljvi;

    invoke-direct {v0}, Ljvi;-><init>()V

    iput-object v0, p0, Ljvg;->f:Ljvi;

    .line 1394
    :cond_2
    iget-object v0, p0, Ljvg;->f:Ljvi;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 1325
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x1a -> :sswitch_3
        0x20 -> :sswitch_4
        0x28 -> :sswitch_5
        0x32 -> :sswitch_6
    .end sparse-switch

    .line 1336
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    .line 1367
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch

    .line 1378
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public a(Llxz;)V
    .locals 3

    .prologue
    const/high16 v2, -0x80000000

    .line 268
    iget v0, p0, Ljvg;->a:I

    if-eq v0, v2, :cond_0

    .line 269
    const/4 v0, 0x1

    iget v1, p0, Ljvg;->a:I

    invoke-virtual {p1, v0, v1}, Llxz;->a(II)V

    .line 271
    :cond_0
    iget-object v0, p0, Ljvg;->b:Ljava/lang/Integer;

    if-eqz v0, :cond_1

    .line 272
    const/4 v0, 0x2

    iget-object v1, p0, Ljvg;->b:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(II)V

    .line 274
    :cond_1
    iget-object v0, p0, Ljvg;->c:Ljvh;

    if-eqz v0, :cond_2

    .line 275
    const/4 v0, 0x3

    iget-object v1, p0, Ljvg;->c:Ljvh;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 277
    :cond_2
    iget v0, p0, Ljvg;->d:I

    if-eq v0, v2, :cond_3

    .line 278
    const/4 v0, 0x4

    iget v1, p0, Ljvg;->d:I

    invoke-virtual {p1, v0, v1}, Llxz;->a(II)V

    .line 280
    :cond_3
    iget v0, p0, Ljvg;->e:I

    if-eq v0, v2, :cond_4

    .line 281
    const/4 v0, 0x5

    iget v1, p0, Ljvg;->e:I

    invoke-virtual {p1, v0, v1}, Llxz;->a(II)V

    .line 283
    :cond_4
    iget-object v0, p0, Ljvg;->f:Ljvi;

    if-eqz v0, :cond_5

    .line 284
    const/4 v0, 0x6

    iget-object v1, p0, Ljvg;->f:Ljvi;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 286
    :cond_5
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 287
    return-void
.end method

.method protected b()I
    .locals 4

    .prologue
    const/high16 v3, -0x80000000

    .line 291
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 292
    iget v1, p0, Ljvg;->a:I

    if-eq v1, v3, :cond_0

    .line 293
    const/4 v1, 0x1

    iget v2, p0, Ljvg;->a:I

    .line 294
    invoke-static {v1, v2}, Llxz;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 296
    :cond_0
    iget-object v1, p0, Ljvg;->b:Ljava/lang/Integer;

    if-eqz v1, :cond_1

    .line 297
    const/4 v1, 0x2

    iget-object v2, p0, Ljvg;->b:Ljava/lang/Integer;

    .line 298
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Llxz;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 300
    :cond_1
    iget-object v1, p0, Ljvg;->c:Ljvh;

    if-eqz v1, :cond_2

    .line 301
    const/4 v1, 0x3

    iget-object v2, p0, Ljvg;->c:Ljvh;

    .line 302
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 304
    :cond_2
    iget v1, p0, Ljvg;->d:I

    if-eq v1, v3, :cond_3

    .line 305
    const/4 v1, 0x4

    iget v2, p0, Ljvg;->d:I

    .line 306
    invoke-static {v1, v2}, Llxz;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 308
    :cond_3
    iget v1, p0, Ljvg;->e:I

    if-eq v1, v3, :cond_4

    .line 309
    const/4 v1, 0x5

    iget v2, p0, Ljvg;->e:I

    .line 310
    invoke-static {v1, v2}, Llxz;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 312
    :cond_4
    iget-object v1, p0, Ljvg;->f:Ljvi;

    if-eqz v1, :cond_5

    .line 313
    const/4 v1, 0x6

    iget-object v2, p0, Ljvg;->f:Ljvi;

    .line 314
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 316
    :cond_5
    return v0
.end method
