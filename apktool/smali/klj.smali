.class public final Lklj;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Lklj;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Ljava/lang/Integer;

.field public b:Ljava/lang/String;

.field public c:Lklk;

.field public d:Lklc;

.field public e:Lkle;

.field public f:Lkld;

.field public g:Lkln;

.field public h:Lklf;

.field public i:Lklo;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1239
    invoke-direct {p0}, Llyb;-><init>()V

    .line 2244
    iput-object v0, p0, Lklj;->a:Ljava/lang/Integer;

    .line 2245
    iput-object v0, p0, Lklj;->b:Ljava/lang/String;

    .line 2246
    iput-object v0, p0, Lklj;->c:Lklk;

    .line 2247
    iput-object v0, p0, Lklj;->d:Lklc;

    .line 2248
    iput-object v0, p0, Lklj;->e:Lkle;

    .line 2249
    iput-object v0, p0, Lklj;->f:Lkld;

    .line 2250
    iput-object v0, p0, Lklj;->g:Lkln;

    .line 2251
    iput-object v0, p0, Lklj;->h:Lklf;

    .line 2252
    iput-object v0, p0, Lklj;->i:Lklo;

    .line 2253
    iput-object v0, p0, Lklj;->eD:Llyd;

    .line 2254
    const/4 v0, -0x1

    iput v0, p0, Lklj;->eE:I

    .line 1241
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 1

    .prologue
    .line 2338
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 2339
    sparse-switch v0, :sswitch_data_0

    .line 2343
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2344
    :sswitch_0
    return-object p0

    .line 2349
    :sswitch_1
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lklj;->a:Ljava/lang/Integer;

    goto :goto_0

    .line 2353
    :sswitch_2
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lklj;->b:Ljava/lang/String;

    goto :goto_0

    .line 2357
    :sswitch_3
    iget-object v0, p0, Lklj;->c:Lklk;

    if-nez v0, :cond_1

    .line 2358
    new-instance v0, Lklk;

    invoke-direct {v0}, Lklk;-><init>()V

    iput-object v0, p0, Lklj;->c:Lklk;

    .line 2360
    :cond_1
    iget-object v0, p0, Lklj;->c:Lklk;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 2364
    :sswitch_4
    iget-object v0, p0, Lklj;->d:Lklc;

    if-nez v0, :cond_2

    .line 2365
    new-instance v0, Lklc;

    invoke-direct {v0}, Lklc;-><init>()V

    iput-object v0, p0, Lklj;->d:Lklc;

    .line 2367
    :cond_2
    iget-object v0, p0, Lklj;->d:Lklc;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 2371
    :sswitch_5
    iget-object v0, p0, Lklj;->e:Lkle;

    if-nez v0, :cond_3

    .line 2372
    new-instance v0, Lkle;

    invoke-direct {v0}, Lkle;-><init>()V

    iput-object v0, p0, Lklj;->e:Lkle;

    .line 2374
    :cond_3
    iget-object v0, p0, Lklj;->e:Lkle;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 2378
    :sswitch_6
    iget-object v0, p0, Lklj;->f:Lkld;

    if-nez v0, :cond_4

    .line 2379
    new-instance v0, Lkld;

    invoke-direct {v0}, Lkld;-><init>()V

    iput-object v0, p0, Lklj;->f:Lkld;

    .line 2381
    :cond_4
    iget-object v0, p0, Lklj;->f:Lkld;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 2385
    :sswitch_7
    iget-object v0, p0, Lklj;->g:Lkln;

    if-nez v0, :cond_5

    .line 2386
    new-instance v0, Lkln;

    invoke-direct {v0}, Lkln;-><init>()V

    iput-object v0, p0, Lklj;->g:Lkln;

    .line 2388
    :cond_5
    iget-object v0, p0, Lklj;->g:Lkln;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 2392
    :sswitch_8
    iget-object v0, p0, Lklj;->h:Lklf;

    if-nez v0, :cond_6

    .line 2393
    new-instance v0, Lklf;

    invoke-direct {v0}, Lklf;-><init>()V

    iput-object v0, p0, Lklj;->h:Lklf;

    .line 2395
    :cond_6
    iget-object v0, p0, Lklj;->h:Lklf;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto/16 :goto_0

    .line 2399
    :sswitch_9
    iget-object v0, p0, Lklj;->i:Lklo;

    if-nez v0, :cond_7

    .line 2400
    new-instance v0, Lklo;

    invoke-direct {v0}, Lklo;-><init>()V

    iput-object v0, p0, Lklj;->i:Lklo;

    .line 2402
    :cond_7
    iget-object v0, p0, Lklj;->i:Lklo;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto/16 :goto_0

    .line 2339
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
        0x2a -> :sswitch_5
        0x32 -> :sswitch_6
        0x3a -> :sswitch_7
        0x42 -> :sswitch_8
        0x4a -> :sswitch_9
    .end sparse-switch
.end method

.method public a(Llxz;)V
    .locals 2

    .prologue
    .line 1261
    iget-object v0, p0, Lklj;->a:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 1262
    const/4 v0, 0x1

    iget-object v1, p0, Lklj;->a:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(II)V

    .line 1264
    :cond_0
    iget-object v0, p0, Lklj;->b:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 1265
    const/4 v0, 0x2

    iget-object v1, p0, Lklj;->b:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 1267
    :cond_1
    iget-object v0, p0, Lklj;->c:Lklk;

    if-eqz v0, :cond_2

    .line 1268
    const/4 v0, 0x3

    iget-object v1, p0, Lklj;->c:Lklk;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 1270
    :cond_2
    iget-object v0, p0, Lklj;->d:Lklc;

    if-eqz v0, :cond_3

    .line 1271
    const/4 v0, 0x4

    iget-object v1, p0, Lklj;->d:Lklc;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 1273
    :cond_3
    iget-object v0, p0, Lklj;->e:Lkle;

    if-eqz v0, :cond_4

    .line 1274
    const/4 v0, 0x5

    iget-object v1, p0, Lklj;->e:Lkle;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 1276
    :cond_4
    iget-object v0, p0, Lklj;->f:Lkld;

    if-eqz v0, :cond_5

    .line 1277
    const/4 v0, 0x6

    iget-object v1, p0, Lklj;->f:Lkld;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 1279
    :cond_5
    iget-object v0, p0, Lklj;->g:Lkln;

    if-eqz v0, :cond_6

    .line 1280
    const/4 v0, 0x7

    iget-object v1, p0, Lklj;->g:Lkln;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 1282
    :cond_6
    iget-object v0, p0, Lklj;->h:Lklf;

    if-eqz v0, :cond_7

    .line 1283
    const/16 v0, 0x8

    iget-object v1, p0, Lklj;->h:Lklf;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 1285
    :cond_7
    iget-object v0, p0, Lklj;->i:Lklo;

    if-eqz v0, :cond_8

    .line 1286
    const/16 v0, 0x9

    iget-object v1, p0, Lklj;->i:Lklo;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 1288
    :cond_8
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 1289
    return-void
.end method

.method protected b()I
    .locals 3

    .prologue
    .line 1293
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 1294
    iget-object v1, p0, Lklj;->a:Ljava/lang/Integer;

    if-eqz v1, :cond_0

    .line 1295
    const/4 v1, 0x1

    iget-object v2, p0, Lklj;->a:Ljava/lang/Integer;

    .line 1296
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Llxz;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1298
    :cond_0
    iget-object v1, p0, Lklj;->b:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 1299
    const/4 v1, 0x2

    iget-object v2, p0, Lklj;->b:Ljava/lang/String;

    .line 1300
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1302
    :cond_1
    iget-object v1, p0, Lklj;->c:Lklk;

    if-eqz v1, :cond_2

    .line 1303
    const/4 v1, 0x3

    iget-object v2, p0, Lklj;->c:Lklk;

    .line 1304
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1306
    :cond_2
    iget-object v1, p0, Lklj;->d:Lklc;

    if-eqz v1, :cond_3

    .line 1307
    const/4 v1, 0x4

    iget-object v2, p0, Lklj;->d:Lklc;

    .line 1308
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1310
    :cond_3
    iget-object v1, p0, Lklj;->e:Lkle;

    if-eqz v1, :cond_4

    .line 1311
    const/4 v1, 0x5

    iget-object v2, p0, Lklj;->e:Lkle;

    .line 1312
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1314
    :cond_4
    iget-object v1, p0, Lklj;->f:Lkld;

    if-eqz v1, :cond_5

    .line 1315
    const/4 v1, 0x6

    iget-object v2, p0, Lklj;->f:Lkld;

    .line 1316
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1318
    :cond_5
    iget-object v1, p0, Lklj;->g:Lkln;

    if-eqz v1, :cond_6

    .line 1319
    const/4 v1, 0x7

    iget-object v2, p0, Lklj;->g:Lkln;

    .line 1320
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1322
    :cond_6
    iget-object v1, p0, Lklj;->h:Lklf;

    if-eqz v1, :cond_7

    .line 1323
    const/16 v1, 0x8

    iget-object v2, p0, Lklj;->h:Lklf;

    .line 1324
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1326
    :cond_7
    iget-object v1, p0, Lklj;->i:Lklo;

    if-eqz v1, :cond_8

    .line 1327
    const/16 v1, 0x9

    iget-object v2, p0, Lklj;->i:Lklo;

    .line 1328
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1330
    :cond_8
    return v0
.end method
