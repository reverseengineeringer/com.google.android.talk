.class public final Lmmu;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Lmmu;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile f:[Lmmu;


# instance fields
.field public a:Ljava/lang/String;

.field public b:[Lmmr;

.field public c:Lmmr;

.field public d:Lmmr;

.field public e:Lmks;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 223
    invoke-direct {p0}, Llyb;-><init>()V

    .line 1228
    iput-object v1, p0, Lmmu;->a:Ljava/lang/String;

    .line 1229
    invoke-static {}, Lmmr;->d()[Lmmr;

    move-result-object v0

    iput-object v0, p0, Lmmu;->b:[Lmmr;

    .line 1230
    iput-object v1, p0, Lmmu;->c:Lmmr;

    .line 1231
    iput-object v1, p0, Lmmu;->d:Lmmr;

    .line 1232
    iput-object v1, p0, Lmmu;->e:Lmks;

    .line 1233
    iput-object v1, p0, Lmmu;->eD:Llyd;

    .line 1234
    const/4 v0, -0x1

    iput v0, p0, Lmmu;->eE:I

    .line 225
    return-void
.end method

.method public static d()[Lmmu;
    .locals 2

    .prologue
    .line 195
    sget-object v0, Lmmu;->f:[Lmmu;

    if-nez v0, :cond_1

    .line 196
    sget-object v1, Llyf;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 198
    :try_start_0
    sget-object v0, Lmmu;->f:[Lmmu;

    if-nez v0, :cond_0

    .line 199
    const/4 v0, 0x0

    new-array v0, v0, [Lmmu;

    sput-object v0, Lmmu;->f:[Lmmu;

    .line 201
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 203
    :cond_1
    sget-object v0, Lmmu;->f:[Lmmu;

    return-object v0

    .line 201
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
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 1296
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 1297
    sparse-switch v0, :sswitch_data_0

    .line 1301
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1302
    :sswitch_0
    return-object p0

    .line 1307
    :sswitch_1
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmmu;->a:Ljava/lang/String;

    goto :goto_0

    .line 1311
    :sswitch_2
    const/16 v0, 0x12

    .line 1312
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v2

    .line 1313
    iget-object v0, p0, Lmmu;->b:[Lmmr;

    if-nez v0, :cond_2

    move v0, v1

    .line 1314
    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Lmmr;

    .line 1316
    if-eqz v0, :cond_1

    .line 1317
    iget-object v3, p0, Lmmu;->b:[Lmmr;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1319
    :cond_1
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_3

    .line 1320
    new-instance v3, Lmmr;

    invoke-direct {v3}, Lmmr;-><init>()V

    aput-object v3, v2, v0

    .line 1321
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Llxy;->a(Llyi;)V

    .line 1322
    invoke-virtual {p1}, Llxy;->a()I

    .line 1319
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1313
    :cond_2
    iget-object v0, p0, Lmmu;->b:[Lmmr;

    array-length v0, v0

    goto :goto_1

    .line 1325
    :cond_3
    new-instance v3, Lmmr;

    invoke-direct {v3}, Lmmr;-><init>()V

    aput-object v3, v2, v0

    .line 1326
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    .line 1327
    iput-object v2, p0, Lmmu;->b:[Lmmr;

    goto :goto_0

    .line 1331
    :sswitch_3
    iget-object v0, p0, Lmmu;->c:Lmmr;

    if-nez v0, :cond_4

    .line 1332
    new-instance v0, Lmmr;

    invoke-direct {v0}, Lmmr;-><init>()V

    iput-object v0, p0, Lmmu;->c:Lmmr;

    .line 1334
    :cond_4
    iget-object v0, p0, Lmmu;->c:Lmmr;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 1338
    :sswitch_4
    iget-object v0, p0, Lmmu;->d:Lmmr;

    if-nez v0, :cond_5

    .line 1339
    new-instance v0, Lmmr;

    invoke-direct {v0}, Lmmr;-><init>()V

    iput-object v0, p0, Lmmu;->d:Lmmr;

    .line 1341
    :cond_5
    iget-object v0, p0, Lmmu;->d:Lmmr;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 1345
    :sswitch_5
    iget-object v0, p0, Lmmu;->e:Lmks;

    if-nez v0, :cond_6

    .line 1346
    new-instance v0, Lmks;

    invoke-direct {v0}, Lmks;-><init>()V

    iput-object v0, p0, Lmmu;->e:Lmks;

    .line 1348
    :cond_6
    iget-object v0, p0, Lmmu;->e:Lmks;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto/16 :goto_0

    .line 1297
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
        0x2a -> :sswitch_5
    .end sparse-switch
.end method

.method public a(Llxz;)V
    .locals 3

    .prologue
    .line 241
    const/4 v0, 0x1

    iget-object v1, p0, Lmmu;->a:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 242
    iget-object v0, p0, Lmmu;->b:[Lmmr;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lmmu;->b:[Lmmr;

    array-length v0, v0

    if-lez v0, :cond_1

    .line 243
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lmmu;->b:[Lmmr;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 244
    iget-object v1, p0, Lmmu;->b:[Lmmr;

    aget-object v1, v1, v0

    .line 245
    if-eqz v1, :cond_0

    .line 246
    const/4 v2, 0x2

    invoke-virtual {p1, v2, v1}, Llxz;->b(ILlyi;)V

    .line 243
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 250
    :cond_1
    iget-object v0, p0, Lmmu;->c:Lmmr;

    if-eqz v0, :cond_2

    .line 251
    const/4 v0, 0x3

    iget-object v1, p0, Lmmu;->c:Lmmr;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 253
    :cond_2
    iget-object v0, p0, Lmmu;->d:Lmmr;

    if-eqz v0, :cond_3

    .line 254
    const/4 v0, 0x4

    iget-object v1, p0, Lmmu;->d:Lmmr;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 256
    :cond_3
    iget-object v0, p0, Lmmu;->e:Lmks;

    if-eqz v0, :cond_4

    .line 257
    const/4 v0, 0x5

    iget-object v1, p0, Lmmu;->e:Lmks;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 259
    :cond_4
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 260
    return-void
.end method

.method protected b()I
    .locals 4

    .prologue
    .line 264
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 265
    const/4 v1, 0x1

    iget-object v2, p0, Lmmu;->a:Ljava/lang/String;

    .line 266
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v1, v0

    .line 267
    iget-object v0, p0, Lmmu;->b:[Lmmr;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lmmu;->b:[Lmmr;

    array-length v0, v0

    if-lez v0, :cond_1

    .line 268
    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lmmu;->b:[Lmmr;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 269
    iget-object v2, p0, Lmmu;->b:[Lmmr;

    aget-object v2, v2, v0

    .line 270
    if-eqz v2, :cond_0

    .line 271
    const/4 v3, 0x2

    .line 272
    invoke-static {v3, v2}, Llxz;->d(ILlyi;)I

    move-result v2

    add-int/2addr v1, v2

    .line 268
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 276
    :cond_1
    iget-object v0, p0, Lmmu;->c:Lmmr;

    if-eqz v0, :cond_2

    .line 277
    const/4 v0, 0x3

    iget-object v2, p0, Lmmu;->c:Lmmr;

    .line 278
    invoke-static {v0, v2}, Llxz;->d(ILlyi;)I

    move-result v0

    add-int/2addr v1, v0

    .line 280
    :cond_2
    iget-object v0, p0, Lmmu;->d:Lmmr;

    if-eqz v0, :cond_3

    .line 281
    const/4 v0, 0x4

    iget-object v2, p0, Lmmu;->d:Lmmr;

    .line 282
    invoke-static {v0, v2}, Llxz;->d(ILlyi;)I

    move-result v0

    add-int/2addr v1, v0

    .line 284
    :cond_3
    iget-object v0, p0, Lmmu;->e:Lmks;

    if-eqz v0, :cond_4

    .line 285
    const/4 v0, 0x5

    iget-object v2, p0, Lmmu;->e:Lmks;

    .line 286
    invoke-static {v0, v2}, Llxz;->d(ILlyi;)I

    move-result v0

    add-int/2addr v1, v0

    .line 288
    :cond_4
    return v1
.end method
