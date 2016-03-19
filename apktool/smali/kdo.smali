.class public final Lkdo;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Lkdo;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Ljxm;

.field public b:Ljxj;

.field public c:Ljxk;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/Boolean;

.field public f:Ljava/lang/Integer;

.field public g:Lmdx;

.field public h:Ljava/lang/String;

.field public i:Ljxc;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1264
    invoke-direct {p0}, Llyb;-><init>()V

    .line 2269
    iput-object v0, p0, Lkdo;->a:Ljxm;

    .line 2270
    iput-object v0, p0, Lkdo;->b:Ljxj;

    .line 2271
    iput-object v0, p0, Lkdo;->c:Ljxk;

    .line 2272
    iput-object v0, p0, Lkdo;->d:Ljava/lang/String;

    .line 2273
    iput-object v0, p0, Lkdo;->e:Ljava/lang/Boolean;

    .line 2274
    iput-object v0, p0, Lkdo;->f:Ljava/lang/Integer;

    .line 2275
    iput-object v0, p0, Lkdo;->g:Lmdx;

    .line 2276
    iput-object v0, p0, Lkdo;->h:Ljava/lang/String;

    .line 2277
    iput-object v0, p0, Lkdo;->i:Ljxc;

    .line 2278
    iput-object v0, p0, Lkdo;->eD:Llyd;

    .line 2279
    const/4 v0, -0x1

    iput v0, p0, Lkdo;->eE:I

    .line 1266
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 1

    .prologue
    .line 3363
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 3364
    sparse-switch v0, :sswitch_data_0

    .line 3368
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3369
    :sswitch_0
    return-object p0

    .line 3374
    :sswitch_1
    iget-object v0, p0, Lkdo;->a:Ljxm;

    if-nez v0, :cond_1

    .line 3375
    new-instance v0, Ljxm;

    invoke-direct {v0}, Ljxm;-><init>()V

    iput-object v0, p0, Lkdo;->a:Ljxm;

    .line 3377
    :cond_1
    iget-object v0, p0, Lkdo;->a:Ljxm;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 3381
    :sswitch_2
    iget-object v0, p0, Lkdo;->b:Ljxj;

    if-nez v0, :cond_2

    .line 3382
    new-instance v0, Ljxj;

    invoke-direct {v0}, Ljxj;-><init>()V

    iput-object v0, p0, Lkdo;->b:Ljxj;

    .line 3384
    :cond_2
    iget-object v0, p0, Lkdo;->b:Ljxj;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 3388
    :sswitch_3
    iget-object v0, p0, Lkdo;->c:Ljxk;

    if-nez v0, :cond_3

    .line 3389
    new-instance v0, Ljxk;

    invoke-direct {v0}, Ljxk;-><init>()V

    iput-object v0, p0, Lkdo;->c:Ljxk;

    .line 3391
    :cond_3
    iget-object v0, p0, Lkdo;->c:Ljxk;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 3395
    :sswitch_4
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lkdo;->d:Ljava/lang/String;

    goto :goto_0

    .line 3399
    :sswitch_5
    invoke-virtual {p1}, Llxy;->i()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lkdo;->e:Ljava/lang/Boolean;

    goto :goto_0

    .line 3403
    :sswitch_6
    invoke-virtual {p1}, Llxy;->l()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lkdo;->f:Ljava/lang/Integer;

    goto :goto_0

    .line 3407
    :sswitch_7
    iget-object v0, p0, Lkdo;->g:Lmdx;

    if-nez v0, :cond_4

    .line 3408
    new-instance v0, Lmdx;

    invoke-direct {v0}, Lmdx;-><init>()V

    iput-object v0, p0, Lkdo;->g:Lmdx;

    .line 3410
    :cond_4
    iget-object v0, p0, Lkdo;->g:Lmdx;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 3414
    :sswitch_8
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lkdo;->h:Ljava/lang/String;

    goto :goto_0

    .line 3418
    :sswitch_9
    iget-object v0, p0, Lkdo;->i:Ljxc;

    if-nez v0, :cond_5

    .line 3419
    new-instance v0, Ljxc;

    invoke-direct {v0}, Ljxc;-><init>()V

    iput-object v0, p0, Lkdo;->i:Ljxc;

    .line 3421
    :cond_5
    iget-object v0, p0, Lkdo;->i:Ljxc;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto/16 :goto_0

    .line 3364
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
        0x28 -> :sswitch_5
        0x30 -> :sswitch_6
        0x3a -> :sswitch_7
        0x42 -> :sswitch_8
        0x4a -> :sswitch_9
    .end sparse-switch
.end method

.method public a(Llxz;)V
    .locals 2

    .prologue
    .line 1286
    iget-object v0, p0, Lkdo;->a:Ljxm;

    if-eqz v0, :cond_0

    .line 1287
    const/4 v0, 0x1

    iget-object v1, p0, Lkdo;->a:Ljxm;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 1289
    :cond_0
    iget-object v0, p0, Lkdo;->b:Ljxj;

    if-eqz v0, :cond_1

    .line 1290
    const/4 v0, 0x2

    iget-object v1, p0, Lkdo;->b:Ljxj;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 1292
    :cond_1
    iget-object v0, p0, Lkdo;->c:Ljxk;

    if-eqz v0, :cond_2

    .line 1293
    const/4 v0, 0x3

    iget-object v1, p0, Lkdo;->c:Ljxk;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 1295
    :cond_2
    iget-object v0, p0, Lkdo;->d:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 1296
    const/4 v0, 0x4

    iget-object v1, p0, Lkdo;->d:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 1298
    :cond_3
    iget-object v0, p0, Lkdo;->e:Ljava/lang/Boolean;

    if-eqz v0, :cond_4

    .line 1299
    const/4 v0, 0x5

    iget-object v1, p0, Lkdo;->e:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(IZ)V

    .line 1301
    :cond_4
    iget-object v0, p0, Lkdo;->f:Ljava/lang/Integer;

    if-eqz v0, :cond_5

    .line 1302
    const/4 v0, 0x6

    iget-object v1, p0, Lkdo;->f:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->c(II)V

    .line 1304
    :cond_5
    iget-object v0, p0, Lkdo;->g:Lmdx;

    if-eqz v0, :cond_6

    .line 1305
    const/4 v0, 0x7

    iget-object v1, p0, Lkdo;->g:Lmdx;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 1307
    :cond_6
    iget-object v0, p0, Lkdo;->h:Ljava/lang/String;

    if-eqz v0, :cond_7

    .line 1308
    const/16 v0, 0x8

    iget-object v1, p0, Lkdo;->h:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 1310
    :cond_7
    iget-object v0, p0, Lkdo;->i:Ljxc;

    if-eqz v0, :cond_8

    .line 1311
    const/16 v0, 0x9

    iget-object v1, p0, Lkdo;->i:Ljxc;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 1313
    :cond_8
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 1314
    return-void
.end method

.method protected b()I
    .locals 3

    .prologue
    .line 1318
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 1319
    iget-object v1, p0, Lkdo;->a:Ljxm;

    if-eqz v1, :cond_0

    .line 1320
    const/4 v1, 0x1

    iget-object v2, p0, Lkdo;->a:Ljxm;

    .line 1321
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1323
    :cond_0
    iget-object v1, p0, Lkdo;->b:Ljxj;

    if-eqz v1, :cond_1

    .line 1324
    const/4 v1, 0x2

    iget-object v2, p0, Lkdo;->b:Ljxj;

    .line 1325
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1327
    :cond_1
    iget-object v1, p0, Lkdo;->c:Ljxk;

    if-eqz v1, :cond_2

    .line 1328
    const/4 v1, 0x3

    iget-object v2, p0, Lkdo;->c:Ljxk;

    .line 1329
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1331
    :cond_2
    iget-object v1, p0, Lkdo;->d:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 1332
    const/4 v1, 0x4

    iget-object v2, p0, Lkdo;->d:Ljava/lang/String;

    .line 1333
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1335
    :cond_3
    iget-object v1, p0, Lkdo;->e:Ljava/lang/Boolean;

    if-eqz v1, :cond_4

    .line 1336
    const/4 v1, 0x5

    iget-object v2, p0, Lkdo;->e:Ljava/lang/Boolean;

    .line 1337
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 2620
    invoke-static {v1}, Llxz;->f(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 1337
    add-int/2addr v0, v1

    .line 1339
    :cond_4
    iget-object v1, p0, Lkdo;->f:Ljava/lang/Integer;

    if-eqz v1, :cond_5

    .line 1340
    const/4 v1, 0x6

    iget-object v2, p0, Lkdo;->f:Ljava/lang/Integer;

    .line 1341
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Llxz;->f(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1343
    :cond_5
    iget-object v1, p0, Lkdo;->g:Lmdx;

    if-eqz v1, :cond_6

    .line 1344
    const/4 v1, 0x7

    iget-object v2, p0, Lkdo;->g:Lmdx;

    .line 1345
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1347
    :cond_6
    iget-object v1, p0, Lkdo;->h:Ljava/lang/String;

    if-eqz v1, :cond_7

    .line 1348
    const/16 v1, 0x8

    iget-object v2, p0, Lkdo;->h:Ljava/lang/String;

    .line 1349
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1351
    :cond_7
    iget-object v1, p0, Lkdo;->i:Ljxc;

    if-eqz v1, :cond_8

    .line 1352
    const/16 v1, 0x9

    iget-object v2, p0, Lkdo;->i:Ljxc;

    .line 1353
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1355
    :cond_8
    return v0
.end method
