.class public final Ljvk;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Ljvk;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile g:[Ljvk;


# instance fields
.field public a:Ljava/lang/Integer;

.field public b:Ljava/lang/Integer;

.field public c:Ljvl;

.field public d:Ljava/lang/Integer;

.field public e:Ljava/lang/Integer;

.field public f:Ljvm;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 268
    invoke-direct {p0}, Llyb;-><init>()V

    .line 1273
    iput-object v0, p0, Ljvk;->a:Ljava/lang/Integer;

    .line 1274
    iput-object v0, p0, Ljvk;->b:Ljava/lang/Integer;

    .line 1275
    iput-object v0, p0, Ljvk;->c:Ljvl;

    .line 1276
    iput-object v0, p0, Ljvk;->d:Ljava/lang/Integer;

    .line 1277
    iput-object v0, p0, Ljvk;->e:Ljava/lang/Integer;

    .line 1278
    iput-object v0, p0, Ljvk;->f:Ljvm;

    .line 1279
    iput-object v0, p0, Ljvk;->eD:Llyd;

    .line 1280
    const/4 v0, -0x1

    iput v0, p0, Ljvk;->eE:I

    .line 270
    return-void
.end method

.method public static d()[Ljvk;
    .locals 2

    .prologue
    .line 237
    sget-object v0, Ljvk;->g:[Ljvk;

    if-nez v0, :cond_1

    .line 238
    sget-object v1, Llyf;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 240
    :try_start_0
    sget-object v0, Ljvk;->g:[Ljvk;

    if-nez v0, :cond_0

    .line 241
    const/4 v0, 0x0

    new-array v0, v0, [Ljvk;

    sput-object v0, Ljvk;->g:[Ljvk;

    .line 243
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 245
    :cond_1
    sget-object v0, Ljvk;->g:[Ljvk;

    return-object v0

    .line 243
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
    .line 1343
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 1344
    sparse-switch v0, :sswitch_data_0

    .line 1348
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1349
    :sswitch_0
    return-object p0

    .line 1354
    :sswitch_1
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    .line 1355
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 1368
    :pswitch_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Ljvk;->a:Ljava/lang/Integer;

    goto :goto_0

    .line 1374
    :sswitch_2
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Ljvk;->b:Ljava/lang/Integer;

    goto :goto_0

    .line 1378
    :sswitch_3
    iget-object v0, p0, Ljvk;->c:Ljvl;

    if-nez v0, :cond_1

    .line 1379
    new-instance v0, Ljvl;

    invoke-direct {v0}, Ljvl;-><init>()V

    iput-object v0, p0, Ljvk;->c:Ljvl;

    .line 1381
    :cond_1
    iget-object v0, p0, Ljvk;->c:Ljvl;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 1385
    :sswitch_4
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    .line 1386
    packed-switch v0, :pswitch_data_1

    goto :goto_0

    .line 1390
    :pswitch_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Ljvk;->d:Ljava/lang/Integer;

    goto :goto_0

    .line 1396
    :sswitch_5
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    .line 1397
    packed-switch v0, :pswitch_data_2

    goto :goto_0

    .line 1404
    :pswitch_2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Ljvk;->e:Ljava/lang/Integer;

    goto :goto_0

    .line 1410
    :sswitch_6
    iget-object v0, p0, Ljvk;->f:Ljvm;

    if-nez v0, :cond_2

    .line 1411
    new-instance v0, Ljvm;

    invoke-direct {v0}, Ljvm;-><init>()V

    iput-object v0, p0, Ljvk;->f:Ljvm;

    .line 1413
    :cond_2
    iget-object v0, p0, Ljvk;->f:Ljvm;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 1344
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

    .line 1355
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

    .line 1386
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch

    .line 1397
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
    .locals 2

    .prologue
    .line 287
    iget-object v0, p0, Ljvk;->a:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 288
    const/4 v0, 0x1

    iget-object v1, p0, Ljvk;->a:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(II)V

    .line 290
    :cond_0
    iget-object v0, p0, Ljvk;->b:Ljava/lang/Integer;

    if-eqz v0, :cond_1

    .line 291
    const/4 v0, 0x2

    iget-object v1, p0, Ljvk;->b:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(II)V

    .line 293
    :cond_1
    iget-object v0, p0, Ljvk;->c:Ljvl;

    if-eqz v0, :cond_2

    .line 294
    const/4 v0, 0x3

    iget-object v1, p0, Ljvk;->c:Ljvl;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 296
    :cond_2
    iget-object v0, p0, Ljvk;->d:Ljava/lang/Integer;

    if-eqz v0, :cond_3

    .line 297
    const/4 v0, 0x4

    iget-object v1, p0, Ljvk;->d:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(II)V

    .line 299
    :cond_3
    iget-object v0, p0, Ljvk;->e:Ljava/lang/Integer;

    if-eqz v0, :cond_4

    .line 300
    const/4 v0, 0x5

    iget-object v1, p0, Ljvk;->e:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(II)V

    .line 302
    :cond_4
    iget-object v0, p0, Ljvk;->f:Ljvm;

    if-eqz v0, :cond_5

    .line 303
    const/4 v0, 0x6

    iget-object v1, p0, Ljvk;->f:Ljvm;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 305
    :cond_5
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 306
    return-void
.end method

.method protected b()I
    .locals 3

    .prologue
    .line 310
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 311
    iget-object v1, p0, Ljvk;->a:Ljava/lang/Integer;

    if-eqz v1, :cond_0

    .line 312
    const/4 v1, 0x1

    iget-object v2, p0, Ljvk;->a:Ljava/lang/Integer;

    .line 313
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Llxz;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 315
    :cond_0
    iget-object v1, p0, Ljvk;->b:Ljava/lang/Integer;

    if-eqz v1, :cond_1

    .line 316
    const/4 v1, 0x2

    iget-object v2, p0, Ljvk;->b:Ljava/lang/Integer;

    .line 317
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Llxz;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 319
    :cond_1
    iget-object v1, p0, Ljvk;->c:Ljvl;

    if-eqz v1, :cond_2

    .line 320
    const/4 v1, 0x3

    iget-object v2, p0, Ljvk;->c:Ljvl;

    .line 321
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 323
    :cond_2
    iget-object v1, p0, Ljvk;->d:Ljava/lang/Integer;

    if-eqz v1, :cond_3

    .line 324
    const/4 v1, 0x4

    iget-object v2, p0, Ljvk;->d:Ljava/lang/Integer;

    .line 325
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Llxz;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 327
    :cond_3
    iget-object v1, p0, Ljvk;->e:Ljava/lang/Integer;

    if-eqz v1, :cond_4

    .line 328
    const/4 v1, 0x5

    iget-object v2, p0, Ljvk;->e:Ljava/lang/Integer;

    .line 329
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Llxz;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 331
    :cond_4
    iget-object v1, p0, Ljvk;->f:Ljvm;

    if-eqz v1, :cond_5

    .line 332
    const/4 v1, 0x6

    iget-object v2, p0, Ljvk;->f:Ljvm;

    .line 333
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 335
    :cond_5
    return v0
.end method
