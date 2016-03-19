.class public final Lmkc;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Lmkc;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Lmmm;

.field public b:[Lmkd;

.field public c:Lmks;

.field public d:[I

.field public e:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 175
    invoke-direct {p0}, Llyb;-><init>()V

    .line 1180
    iput-object v1, p0, Lmkc;->a:Lmmm;

    .line 1181
    invoke-static {}, Lmkd;->d()[Lmkd;

    move-result-object v0

    iput-object v0, p0, Lmkc;->b:[Lmkd;

    .line 1182
    iput-object v1, p0, Lmkc;->c:Lmks;

    .line 1183
    sget-object v0, Llyo;->a:[I

    iput-object v0, p0, Lmkc;->d:[I

    .line 1184
    iput-object v1, p0, Lmkc;->e:Ljava/lang/Integer;

    .line 1185
    iput-object v1, p0, Lmkc;->eD:Llyd;

    .line 1186
    const/4 v0, -0x1

    iput v0, p0, Lmkc;->eE:I

    .line 177
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 1260
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 1261
    sparse-switch v0, :sswitch_data_0

    .line 1265
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1266
    :sswitch_0
    return-object p0

    .line 1271
    :sswitch_1
    iget-object v0, p0, Lmkc;->a:Lmmm;

    if-nez v0, :cond_1

    .line 1272
    new-instance v0, Lmmm;

    invoke-direct {v0}, Lmmm;-><init>()V

    iput-object v0, p0, Lmkc;->a:Lmmm;

    .line 1274
    :cond_1
    iget-object v0, p0, Lmkc;->a:Lmmm;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 1278
    :sswitch_2
    const/16 v0, 0x12

    .line 1279
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v2

    .line 1280
    iget-object v0, p0, Lmkc;->b:[Lmkd;

    if-nez v0, :cond_3

    move v0, v1

    .line 1281
    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Lmkd;

    .line 1283
    if-eqz v0, :cond_2

    .line 1284
    iget-object v3, p0, Lmkc;->b:[Lmkd;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1286
    :cond_2
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_4

    .line 1287
    new-instance v3, Lmkd;

    invoke-direct {v3}, Lmkd;-><init>()V

    aput-object v3, v2, v0

    .line 1288
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Llxy;->a(Llyi;)V

    .line 1289
    invoke-virtual {p1}, Llxy;->a()I

    .line 1286
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1280
    :cond_3
    iget-object v0, p0, Lmkc;->b:[Lmkd;

    array-length v0, v0

    goto :goto_1

    .line 1292
    :cond_4
    new-instance v3, Lmkd;

    invoke-direct {v3}, Lmkd;-><init>()V

    aput-object v3, v2, v0

    .line 1293
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    .line 1294
    iput-object v2, p0, Lmkc;->b:[Lmkd;

    goto :goto_0

    .line 1298
    :sswitch_3
    iget-object v0, p0, Lmkc;->c:Lmks;

    if-nez v0, :cond_5

    .line 1299
    new-instance v0, Lmks;

    invoke-direct {v0}, Lmks;-><init>()V

    iput-object v0, p0, Lmkc;->c:Lmks;

    .line 1301
    :cond_5
    iget-object v0, p0, Lmkc;->c:Lmks;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 1305
    :sswitch_4
    const/16 v0, 0x20

    .line 1306
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v2

    .line 1307
    iget-object v0, p0, Lmkc;->d:[I

    if-nez v0, :cond_7

    move v0, v1

    .line 1308
    :goto_3
    add-int/2addr v2, v0

    new-array v2, v2, [I

    .line 1309
    if-eqz v0, :cond_6

    .line 1310
    iget-object v3, p0, Lmkc;->d:[I

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1312
    :cond_6
    :goto_4
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_8

    .line 1313
    invoke-virtual {p1}, Llxy;->f()I

    move-result v3

    aput v3, v2, v0

    .line 1314
    invoke-virtual {p1}, Llxy;->a()I

    .line 1312
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 1307
    :cond_7
    iget-object v0, p0, Lmkc;->d:[I

    array-length v0, v0

    goto :goto_3

    .line 1317
    :cond_8
    invoke-virtual {p1}, Llxy;->f()I

    move-result v3

    aput v3, v2, v0

    .line 1318
    iput-object v2, p0, Lmkc;->d:[I

    goto/16 :goto_0

    .line 1322
    :sswitch_5
    invoke-virtual {p1}, Llxy;->p()I

    move-result v0

    .line 1323
    invoke-virtual {p1, v0}, Llxy;->c(I)I

    move-result v3

    .line 1326
    invoke-virtual {p1}, Llxy;->r()I

    move-result v2

    move v0, v1

    .line 1327
    :goto_5
    invoke-virtual {p1}, Llxy;->q()I

    move-result v4

    if-lez v4, :cond_9

    .line 1328
    invoke-virtual {p1}, Llxy;->f()I

    .line 1329
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 1331
    :cond_9
    invoke-virtual {p1, v2}, Llxy;->e(I)V

    .line 1332
    iget-object v2, p0, Lmkc;->d:[I

    if-nez v2, :cond_b

    move v2, v1

    .line 1333
    :goto_6
    add-int/2addr v0, v2

    new-array v0, v0, [I

    .line 1334
    if-eqz v2, :cond_a

    .line 1335
    iget-object v4, p0, Lmkc;->d:[I

    invoke-static {v4, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1337
    :cond_a
    :goto_7
    array-length v4, v0

    if-ge v2, v4, :cond_c

    .line 1338
    invoke-virtual {p1}, Llxy;->f()I

    move-result v4

    aput v4, v0, v2

    .line 1337
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 1332
    :cond_b
    iget-object v2, p0, Lmkc;->d:[I

    array-length v2, v2

    goto :goto_6

    .line 1340
    :cond_c
    iput-object v0, p0, Lmkc;->d:[I

    .line 1341
    invoke-virtual {p1, v3}, Llxy;->d(I)V

    goto/16 :goto_0

    .line 1345
    :sswitch_6
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lmkc;->e:Ljava/lang/Integer;

    goto/16 :goto_0

    .line 1261
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x20 -> :sswitch_4
        0x22 -> :sswitch_5
        0x28 -> :sswitch_6
    .end sparse-switch
.end method

.method public a(Llxz;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 193
    iget-object v0, p0, Lmkc;->a:Lmmm;

    if-eqz v0, :cond_0

    .line 194
    const/4 v0, 0x1

    iget-object v2, p0, Lmkc;->a:Lmmm;

    invoke-virtual {p1, v0, v2}, Llxz;->b(ILlyi;)V

    .line 196
    :cond_0
    iget-object v0, p0, Lmkc;->b:[Lmkd;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lmkc;->b:[Lmkd;

    array-length v0, v0

    if-lez v0, :cond_2

    move v0, v1

    .line 197
    :goto_0
    iget-object v2, p0, Lmkc;->b:[Lmkd;

    array-length v2, v2

    if-ge v0, v2, :cond_2

    .line 198
    iget-object v2, p0, Lmkc;->b:[Lmkd;

    aget-object v2, v2, v0

    .line 199
    if-eqz v2, :cond_1

    .line 200
    const/4 v3, 0x2

    invoke-virtual {p1, v3, v2}, Llxz;->b(ILlyi;)V

    .line 197
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 204
    :cond_2
    iget-object v0, p0, Lmkc;->c:Lmks;

    if-eqz v0, :cond_3

    .line 205
    const/4 v0, 0x3

    iget-object v2, p0, Lmkc;->c:Lmks;

    invoke-virtual {p1, v0, v2}, Llxz;->b(ILlyi;)V

    .line 207
    :cond_3
    iget-object v0, p0, Lmkc;->d:[I

    if-eqz v0, :cond_4

    iget-object v0, p0, Lmkc;->d:[I

    array-length v0, v0

    if-lez v0, :cond_4

    .line 208
    :goto_1
    iget-object v0, p0, Lmkc;->d:[I

    array-length v0, v0

    if-ge v1, v0, :cond_4

    .line 209
    const/4 v0, 0x4

    iget-object v2, p0, Lmkc;->d:[I

    aget v2, v2, v1

    invoke-virtual {p1, v0, v2}, Llxz;->a(II)V

    .line 208
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 212
    :cond_4
    iget-object v0, p0, Lmkc;->e:Ljava/lang/Integer;

    if-eqz v0, :cond_5

    .line 213
    const/4 v0, 0x5

    iget-object v1, p0, Lmkc;->e:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(II)V

    .line 215
    :cond_5
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 216
    return-void
.end method

.method protected b()I
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 220
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 221
    iget-object v2, p0, Lmkc;->a:Lmmm;

    if-eqz v2, :cond_0

    .line 222
    const/4 v2, 0x1

    iget-object v3, p0, Lmkc;->a:Lmmm;

    .line 223
    invoke-static {v2, v3}, Llxz;->d(ILlyi;)I

    move-result v2

    add-int/2addr v0, v2

    .line 225
    :cond_0
    iget-object v2, p0, Lmkc;->b:[Lmkd;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lmkc;->b:[Lmkd;

    array-length v2, v2

    if-lez v2, :cond_3

    move v2, v0

    move v0, v1

    .line 226
    :goto_0
    iget-object v3, p0, Lmkc;->b:[Lmkd;

    array-length v3, v3

    if-ge v0, v3, :cond_2

    .line 227
    iget-object v3, p0, Lmkc;->b:[Lmkd;

    aget-object v3, v3, v0

    .line 228
    if-eqz v3, :cond_1

    .line 229
    const/4 v4, 0x2

    .line 230
    invoke-static {v4, v3}, Llxz;->d(ILlyi;)I

    move-result v3

    add-int/2addr v2, v3

    .line 226
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v2

    .line 234
    :cond_3
    iget-object v2, p0, Lmkc;->c:Lmks;

    if-eqz v2, :cond_4

    .line 235
    const/4 v2, 0x3

    iget-object v3, p0, Lmkc;->c:Lmks;

    .line 236
    invoke-static {v2, v3}, Llxz;->d(ILlyi;)I

    move-result v2

    add-int/2addr v0, v2

    .line 238
    :cond_4
    iget-object v2, p0, Lmkc;->d:[I

    if-eqz v2, :cond_6

    iget-object v2, p0, Lmkc;->d:[I

    array-length v2, v2

    if-lez v2, :cond_6

    move v2, v1

    .line 240
    :goto_1
    iget-object v3, p0, Lmkc;->d:[I

    array-length v3, v3

    if-ge v1, v3, :cond_5

    .line 241
    iget-object v3, p0, Lmkc;->d:[I

    aget v3, v3, v1

    .line 243
    invoke-static {v3}, Llxz;->e(I)I

    move-result v3

    add-int/2addr v2, v3

    .line 240
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 245
    :cond_5
    add-int/2addr v0, v2

    .line 246
    iget-object v1, p0, Lmkc;->d:[I

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    .line 248
    :cond_6
    iget-object v1, p0, Lmkc;->e:Ljava/lang/Integer;

    if-eqz v1, :cond_7

    .line 249
    const/4 v1, 0x5

    iget-object v2, p0, Lmkc;->e:Ljava/lang/Integer;

    .line 250
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Llxz;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 252
    :cond_7
    return v0
.end method
