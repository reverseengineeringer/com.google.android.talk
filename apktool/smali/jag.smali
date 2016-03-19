.class public final Ljag;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Ljag;",
        ">;"
    }
.end annotation


# instance fields
.field public a:[Ljdu;

.field public b:[Ljdu;

.field public c:Ljava/lang/Integer;

.field public d:Ljava/lang/String;

.field public e:Ljek;

.field public f:[Ljgl;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 170
    invoke-direct {p0}, Llyb;-><init>()V

    .line 1175
    invoke-static {}, Ljdu;->d()[Ljdu;

    move-result-object v0

    iput-object v0, p0, Ljag;->a:[Ljdu;

    .line 1176
    invoke-static {}, Ljdu;->d()[Ljdu;

    move-result-object v0

    iput-object v0, p0, Ljag;->b:[Ljdu;

    .line 1177
    iput-object v1, p0, Ljag;->c:Ljava/lang/Integer;

    .line 1178
    iput-object v1, p0, Ljag;->d:Ljava/lang/String;

    .line 1179
    iput-object v1, p0, Ljag;->e:Ljek;

    .line 1180
    invoke-static {}, Ljgl;->d()[Ljgl;

    move-result-object v0

    iput-object v0, p0, Ljag;->f:[Ljgl;

    .line 1181
    iput-object v1, p0, Ljag;->eD:Llyd;

    .line 1182
    const/4 v0, -0x1

    iput v0, p0, Ljag;->eE:I

    .line 172
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 1275
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 1276
    sparse-switch v0, :sswitch_data_0

    .line 1280
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1281
    :sswitch_0
    return-object p0

    .line 1286
    :sswitch_1
    const/16 v0, 0xa

    .line 1287
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v2

    .line 1288
    iget-object v0, p0, Ljag;->a:[Ljdu;

    if-nez v0, :cond_2

    move v0, v1

    .line 1289
    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Ljdu;

    .line 1291
    if-eqz v0, :cond_1

    .line 1292
    iget-object v3, p0, Ljag;->a:[Ljdu;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1294
    :cond_1
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_3

    .line 1295
    new-instance v3, Ljdu;

    invoke-direct {v3}, Ljdu;-><init>()V

    aput-object v3, v2, v0

    .line 1296
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Llxy;->a(Llyi;)V

    .line 1297
    invoke-virtual {p1}, Llxy;->a()I

    .line 1294
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1288
    :cond_2
    iget-object v0, p0, Ljag;->a:[Ljdu;

    array-length v0, v0

    goto :goto_1

    .line 1300
    :cond_3
    new-instance v3, Ljdu;

    invoke-direct {v3}, Ljdu;-><init>()V

    aput-object v3, v2, v0

    .line 1301
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    .line 1302
    iput-object v2, p0, Ljag;->a:[Ljdu;

    goto :goto_0

    .line 1306
    :sswitch_2
    const/16 v0, 0x12

    .line 1307
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v2

    .line 1308
    iget-object v0, p0, Ljag;->b:[Ljdu;

    if-nez v0, :cond_5

    move v0, v1

    .line 1309
    :goto_3
    add-int/2addr v2, v0

    new-array v2, v2, [Ljdu;

    .line 1311
    if-eqz v0, :cond_4

    .line 1312
    iget-object v3, p0, Ljag;->b:[Ljdu;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1314
    :cond_4
    :goto_4
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_6

    .line 1315
    new-instance v3, Ljdu;

    invoke-direct {v3}, Ljdu;-><init>()V

    aput-object v3, v2, v0

    .line 1316
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Llxy;->a(Llyi;)V

    .line 1317
    invoke-virtual {p1}, Llxy;->a()I

    .line 1314
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 1308
    :cond_5
    iget-object v0, p0, Ljag;->b:[Ljdu;

    array-length v0, v0

    goto :goto_3

    .line 1320
    :cond_6
    new-instance v3, Ljdu;

    invoke-direct {v3}, Ljdu;-><init>()V

    aput-object v3, v2, v0

    .line 1321
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    .line 1322
    iput-object v2, p0, Ljag;->b:[Ljdu;

    goto/16 :goto_0

    .line 1326
    :sswitch_3
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Ljag;->c:Ljava/lang/Integer;

    goto/16 :goto_0

    .line 1330
    :sswitch_4
    iget-object v0, p0, Ljag;->e:Ljek;

    if-nez v0, :cond_7

    .line 1331
    new-instance v0, Ljek;

    invoke-direct {v0}, Ljek;-><init>()V

    iput-object v0, p0, Ljag;->e:Ljek;

    .line 1333
    :cond_7
    iget-object v0, p0, Ljag;->e:Ljek;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto/16 :goto_0

    .line 1337
    :sswitch_5
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljag;->d:Ljava/lang/String;

    goto/16 :goto_0

    .line 1341
    :sswitch_6
    const/16 v0, 0x32

    .line 1342
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v2

    .line 1343
    iget-object v0, p0, Ljag;->f:[Ljgl;

    if-nez v0, :cond_9

    move v0, v1

    .line 1344
    :goto_5
    add-int/2addr v2, v0

    new-array v2, v2, [Ljgl;

    .line 1346
    if-eqz v0, :cond_8

    .line 1347
    iget-object v3, p0, Ljag;->f:[Ljgl;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1349
    :cond_8
    :goto_6
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_a

    .line 1350
    new-instance v3, Ljgl;

    invoke-direct {v3}, Ljgl;-><init>()V

    aput-object v3, v2, v0

    .line 1351
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Llxy;->a(Llyi;)V

    .line 1352
    invoke-virtual {p1}, Llxy;->a()I

    .line 1349
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 1343
    :cond_9
    iget-object v0, p0, Ljag;->f:[Ljgl;

    array-length v0, v0

    goto :goto_5

    .line 1355
    :cond_a
    new-instance v3, Ljgl;

    invoke-direct {v3}, Ljgl;-><init>()V

    aput-object v3, v2, v0

    .line 1356
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    .line 1357
    iput-object v2, p0, Ljag;->f:[Ljgl;

    goto/16 :goto_0

    .line 1276
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
.end method

.method public a(Llxz;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 189
    iget-object v0, p0, Ljag;->a:[Ljdu;

    if-eqz v0, :cond_1

    iget-object v0, p0, Ljag;->a:[Ljdu;

    array-length v0, v0

    if-lez v0, :cond_1

    move v0, v1

    .line 190
    :goto_0
    iget-object v2, p0, Ljag;->a:[Ljdu;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 191
    iget-object v2, p0, Ljag;->a:[Ljdu;

    aget-object v2, v2, v0

    .line 192
    if-eqz v2, :cond_0

    .line 193
    const/4 v3, 0x1

    invoke-virtual {p1, v3, v2}, Llxz;->b(ILlyi;)V

    .line 190
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 197
    :cond_1
    iget-object v0, p0, Ljag;->b:[Ljdu;

    if-eqz v0, :cond_3

    iget-object v0, p0, Ljag;->b:[Ljdu;

    array-length v0, v0

    if-lez v0, :cond_3

    move v0, v1

    .line 198
    :goto_1
    iget-object v2, p0, Ljag;->b:[Ljdu;

    array-length v2, v2

    if-ge v0, v2, :cond_3

    .line 199
    iget-object v2, p0, Ljag;->b:[Ljdu;

    aget-object v2, v2, v0

    .line 200
    if-eqz v2, :cond_2

    .line 201
    const/4 v3, 0x2

    invoke-virtual {p1, v3, v2}, Llxz;->b(ILlyi;)V

    .line 198
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 205
    :cond_3
    iget-object v0, p0, Ljag;->c:Ljava/lang/Integer;

    if-eqz v0, :cond_4

    .line 206
    const/4 v0, 0x3

    iget-object v2, p0, Ljag;->c:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p1, v0, v2}, Llxz;->a(II)V

    .line 208
    :cond_4
    iget-object v0, p0, Ljag;->e:Ljek;

    if-eqz v0, :cond_5

    .line 209
    const/4 v0, 0x4

    iget-object v2, p0, Ljag;->e:Ljek;

    invoke-virtual {p1, v0, v2}, Llxz;->b(ILlyi;)V

    .line 211
    :cond_5
    iget-object v0, p0, Ljag;->d:Ljava/lang/String;

    if-eqz v0, :cond_6

    .line 212
    const/4 v0, 0x5

    iget-object v2, p0, Ljag;->d:Ljava/lang/String;

    invoke-virtual {p1, v0, v2}, Llxz;->a(ILjava/lang/String;)V

    .line 214
    :cond_6
    iget-object v0, p0, Ljag;->f:[Ljgl;

    if-eqz v0, :cond_8

    iget-object v0, p0, Ljag;->f:[Ljgl;

    array-length v0, v0

    if-lez v0, :cond_8

    .line 215
    :goto_2
    iget-object v0, p0, Ljag;->f:[Ljgl;

    array-length v0, v0

    if-ge v1, v0, :cond_8

    .line 216
    iget-object v0, p0, Ljag;->f:[Ljgl;

    aget-object v0, v0, v1

    .line 217
    if-eqz v0, :cond_7

    .line 218
    const/4 v2, 0x6

    invoke-virtual {p1, v2, v0}, Llxz;->b(ILlyi;)V

    .line 215
    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 222
    :cond_8
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 223
    return-void
.end method

.method protected b()I
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 227
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 228
    iget-object v2, p0, Ljag;->a:[Ljdu;

    if-eqz v2, :cond_2

    iget-object v2, p0, Ljag;->a:[Ljdu;

    array-length v2, v2

    if-lez v2, :cond_2

    move v2, v0

    move v0, v1

    .line 229
    :goto_0
    iget-object v3, p0, Ljag;->a:[Ljdu;

    array-length v3, v3

    if-ge v0, v3, :cond_1

    .line 230
    iget-object v3, p0, Ljag;->a:[Ljdu;

    aget-object v3, v3, v0

    .line 231
    if-eqz v3, :cond_0

    .line 232
    const/4 v4, 0x1

    .line 233
    invoke-static {v4, v3}, Llxz;->d(ILlyi;)I

    move-result v3

    add-int/2addr v2, v3

    .line 229
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v2

    .line 237
    :cond_2
    iget-object v2, p0, Ljag;->b:[Ljdu;

    if-eqz v2, :cond_5

    iget-object v2, p0, Ljag;->b:[Ljdu;

    array-length v2, v2

    if-lez v2, :cond_5

    move v2, v0

    move v0, v1

    .line 238
    :goto_1
    iget-object v3, p0, Ljag;->b:[Ljdu;

    array-length v3, v3

    if-ge v0, v3, :cond_4

    .line 239
    iget-object v3, p0, Ljag;->b:[Ljdu;

    aget-object v3, v3, v0

    .line 240
    if-eqz v3, :cond_3

    .line 241
    const/4 v4, 0x2

    .line 242
    invoke-static {v4, v3}, Llxz;->d(ILlyi;)I

    move-result v3

    add-int/2addr v2, v3

    .line 238
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    move v0, v2

    .line 246
    :cond_5
    iget-object v2, p0, Ljag;->c:Ljava/lang/Integer;

    if-eqz v2, :cond_6

    .line 247
    const/4 v2, 0x3

    iget-object v3, p0, Ljag;->c:Ljava/lang/Integer;

    .line 248
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v2, v3}, Llxz;->e(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 250
    :cond_6
    iget-object v2, p0, Ljag;->e:Ljek;

    if-eqz v2, :cond_7

    .line 251
    const/4 v2, 0x4

    iget-object v3, p0, Ljag;->e:Ljek;

    .line 252
    invoke-static {v2, v3}, Llxz;->d(ILlyi;)I

    move-result v2

    add-int/2addr v0, v2

    .line 254
    :cond_7
    iget-object v2, p0, Ljag;->d:Ljava/lang/String;

    if-eqz v2, :cond_8

    .line 255
    const/4 v2, 0x5

    iget-object v3, p0, Ljag;->d:Ljava/lang/String;

    .line 256
    invoke-static {v2, v3}, Llxz;->b(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    .line 258
    :cond_8
    iget-object v2, p0, Ljag;->f:[Ljgl;

    if-eqz v2, :cond_a

    iget-object v2, p0, Ljag;->f:[Ljgl;

    array-length v2, v2

    if-lez v2, :cond_a

    .line 259
    :goto_2
    iget-object v2, p0, Ljag;->f:[Ljgl;

    array-length v2, v2

    if-ge v1, v2, :cond_a

    .line 260
    iget-object v2, p0, Ljag;->f:[Ljgl;

    aget-object v2, v2, v1

    .line 261
    if-eqz v2, :cond_9

    .line 262
    const/4 v3, 0x6

    .line 263
    invoke-static {v3, v2}, Llxz;->d(ILlyi;)I

    move-result v2

    add-int/2addr v0, v2

    .line 259
    :cond_9
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 267
    :cond_a
    return v0
.end method
