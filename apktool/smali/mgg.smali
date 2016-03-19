.class public final Lmgg;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Lmgg;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile b:[Lmgg;


# instance fields
.field public a:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1271
    invoke-direct {p0}, Llyb;-><init>()V

    .line 2276
    iput-object v0, p0, Lmgg;->a:Ljava/lang/String;

    .line 2277
    iput-object v0, p0, Lmgg;->eD:Llyd;

    .line 2278
    const/4 v0, -0x1

    iput v0, p0, Lmgg;->eE:I

    .line 1273
    return-void
.end method

.method public static d()[Lmgg;
    .locals 2

    .prologue
    .line 1255
    sget-object v0, Lmgg;->b:[Lmgg;

    if-nez v0, :cond_1

    .line 1256
    sget-object v1, Llyf;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 1258
    :try_start_0
    sget-object v0, Lmgg;->b:[Lmgg;

    if-nez v0, :cond_0

    .line 1259
    const/4 v0, 0x0

    new-array v0, v0, [Lmgg;

    sput-object v0, Lmgg;->b:[Lmgg;

    .line 1261
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1263
    :cond_1
    sget-object v0, Lmgg;->b:[Lmgg;

    return-object v0

    .line 1261
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
    .line 2306
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 2307
    sparse-switch v0, :sswitch_data_0

    .line 2311
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2312
    :sswitch_0
    return-object p0

    .line 2317
    :sswitch_1
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmgg;->a:Ljava/lang/String;

    goto :goto_0

    .line 2307
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
    .end sparse-switch
.end method

.method public a(Llxz;)V
    .locals 2

    .prologue
    .line 1285
    iget-object v0, p0, Lmgg;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1286
    const/4 v0, 0x1

    iget-object v1, p0, Lmgg;->a:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 1288
    :cond_0
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
    iget-object v1, p0, Lmgg;->a:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1295
    const/4 v1, 0x1

    iget-object v2, p0, Lmgg;->a:Ljava/lang/String;

    .line 1296
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1298
    :cond_0
    return v0
.end method
