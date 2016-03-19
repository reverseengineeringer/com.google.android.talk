.class public final Lmkt;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Lmkt;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile d:[Lmkt;


# instance fields
.field public a:Ljava/lang/String;

.field public b:Lmks;

.field public c:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 253
    invoke-direct {p0}, Llyb;-><init>()V

    .line 1258
    iput-object v0, p0, Lmkt;->a:Ljava/lang/String;

    .line 1259
    iput-object v0, p0, Lmkt;->b:Lmks;

    .line 1260
    iput-object v0, p0, Lmkt;->c:Ljava/lang/String;

    .line 1261
    iput-object v0, p0, Lmkt;->eD:Llyd;

    .line 1262
    const/4 v0, -0x1

    iput v0, p0, Lmkt;->eE:I

    .line 255
    return-void
.end method

.method public static d()[Lmkt;
    .locals 2

    .prologue
    .line 231
    sget-object v0, Lmkt;->d:[Lmkt;

    if-nez v0, :cond_1

    .line 232
    sget-object v1, Llyf;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 234
    :try_start_0
    sget-object v0, Lmkt;->d:[Lmkt;

    if-nez v0, :cond_0

    .line 235
    const/4 v0, 0x0

    new-array v0, v0, [Lmkt;

    sput-object v0, Lmkt;->d:[Lmkt;

    .line 237
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 239
    :cond_1
    sget-object v0, Lmkt;->d:[Lmkt;

    return-object v0

    .line 237
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
    .line 1304
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 1305
    sparse-switch v0, :sswitch_data_0

    .line 1309
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1310
    :sswitch_0
    return-object p0

    .line 1315
    :sswitch_1
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmkt;->a:Ljava/lang/String;

    goto :goto_0

    .line 1319
    :sswitch_2
    iget-object v0, p0, Lmkt;->b:Lmks;

    if-nez v0, :cond_1

    .line 1320
    new-instance v0, Lmks;

    invoke-direct {v0}, Lmks;-><init>()V

    iput-object v0, p0, Lmkt;->b:Lmks;

    .line 1322
    :cond_1
    iget-object v0, p0, Lmkt;->b:Lmks;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 1326
    :sswitch_3
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmkt;->c:Ljava/lang/String;

    goto :goto_0

    .line 1305
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
    .line 269
    iget-object v0, p0, Lmkt;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 270
    const/4 v0, 0x1

    iget-object v1, p0, Lmkt;->a:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 272
    :cond_0
    iget-object v0, p0, Lmkt;->b:Lmks;

    if-eqz v0, :cond_1

    .line 273
    const/4 v0, 0x2

    iget-object v1, p0, Lmkt;->b:Lmks;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 275
    :cond_1
    iget-object v0, p0, Lmkt;->c:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 276
    const/4 v0, 0x3

    iget-object v1, p0, Lmkt;->c:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 278
    :cond_2
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 279
    return-void
.end method

.method protected b()I
    .locals 3

    .prologue
    .line 283
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 284
    iget-object v1, p0, Lmkt;->a:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 285
    const/4 v1, 0x1

    iget-object v2, p0, Lmkt;->a:Ljava/lang/String;

    .line 286
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 288
    :cond_0
    iget-object v1, p0, Lmkt;->b:Lmks;

    if-eqz v1, :cond_1

    .line 289
    const/4 v1, 0x2

    iget-object v2, p0, Lmkt;->b:Lmks;

    .line 290
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 292
    :cond_1
    iget-object v1, p0, Lmkt;->c:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 293
    const/4 v1, 0x3

    iget-object v2, p0, Lmkt;->c:Ljava/lang/String;

    .line 294
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 296
    :cond_2
    return v0
.end method
