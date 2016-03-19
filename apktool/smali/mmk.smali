.class public final Lmmk;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Lmmk;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Lmks;

.field public b:Lmml;

.field public c:Ljava/lang/Long;

.field public d:Ljava/lang/Long;

.field public e:Ljava/lang/Integer;

.field public f:[Lmml;

.field public g:Lmks;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 170
    invoke-direct {p0}, Llyb;-><init>()V

    .line 1175
    iput-object v1, p0, Lmmk;->a:Lmks;

    .line 1176
    iput-object v1, p0, Lmmk;->b:Lmml;

    .line 1177
    iput-object v1, p0, Lmmk;->c:Ljava/lang/Long;

    .line 1178
    iput-object v1, p0, Lmmk;->d:Ljava/lang/Long;

    .line 1179
    iput-object v1, p0, Lmmk;->e:Ljava/lang/Integer;

    .line 1180
    invoke-static {}, Lmml;->d()[Lmml;

    move-result-object v0

    iput-object v0, p0, Lmmk;->f:[Lmml;

    .line 1181
    iput-object v1, p0, Lmmk;->g:Lmks;

    .line 1182
    iput-object v1, p0, Lmmk;->eD:Llyd;

    .line 1183
    const/4 v0, -0x1

    iput v0, p0, Lmmk;->eE:I

    .line 172
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 1263
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 1264
    sparse-switch v0, :sswitch_data_0

    .line 1268
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1269
    :sswitch_0
    return-object p0

    .line 1274
    :sswitch_1
    iget-object v0, p0, Lmmk;->a:Lmks;

    if-nez v0, :cond_1

    .line 1275
    new-instance v0, Lmks;

    invoke-direct {v0}, Lmks;-><init>()V

    iput-object v0, p0, Lmmk;->a:Lmks;

    .line 1277
    :cond_1
    iget-object v0, p0, Lmmk;->a:Lmks;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 1281
    :sswitch_2
    iget-object v0, p0, Lmmk;->b:Lmml;

    if-nez v0, :cond_2

    .line 1282
    new-instance v0, Lmml;

    invoke-direct {v0}, Lmml;-><init>()V

    iput-object v0, p0, Lmmk;->b:Lmml;

    .line 1284
    :cond_2
    iget-object v0, p0, Lmmk;->b:Lmml;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 1288
    :sswitch_3
    invoke-virtual {p1}, Llxy;->e()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lmmk;->c:Ljava/lang/Long;

    goto :goto_0

    .line 1292
    :sswitch_4
    invoke-virtual {p1}, Llxy;->e()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lmmk;->d:Ljava/lang/Long;

    goto :goto_0

    .line 1296
    :sswitch_5
    invoke-virtual {p1}, Llxy;->l()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lmmk;->e:Ljava/lang/Integer;

    goto :goto_0

    .line 1300
    :sswitch_6
    const/16 v0, 0x32

    .line 1301
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v2

    .line 1302
    iget-object v0, p0, Lmmk;->f:[Lmml;

    if-nez v0, :cond_4

    move v0, v1

    .line 1303
    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Lmml;

    .line 1305
    if-eqz v0, :cond_3

    .line 1306
    iget-object v3, p0, Lmmk;->f:[Lmml;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1308
    :cond_3
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_5

    .line 1309
    new-instance v3, Lmml;

    invoke-direct {v3}, Lmml;-><init>()V

    aput-object v3, v2, v0

    .line 1310
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Llxy;->a(Llyi;)V

    .line 1311
    invoke-virtual {p1}, Llxy;->a()I

    .line 1308
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1302
    :cond_4
    iget-object v0, p0, Lmmk;->f:[Lmml;

    array-length v0, v0

    goto :goto_1

    .line 1314
    :cond_5
    new-instance v3, Lmml;

    invoke-direct {v3}, Lmml;-><init>()V

    aput-object v3, v2, v0

    .line 1315
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    .line 1316
    iput-object v2, p0, Lmmk;->f:[Lmml;

    goto/16 :goto_0

    .line 1320
    :sswitch_7
    iget-object v0, p0, Lmmk;->g:Lmks;

    if-nez v0, :cond_6

    .line 1321
    new-instance v0, Lmks;

    invoke-direct {v0}, Lmks;-><init>()V

    iput-object v0, p0, Lmmk;->g:Lmks;

    .line 1323
    :cond_6
    iget-object v0, p0, Lmmk;->g:Lmks;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto/16 :goto_0

    .line 1264
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x18 -> :sswitch_3
        0x20 -> :sswitch_4
        0x28 -> :sswitch_5
        0x32 -> :sswitch_6
        0x3a -> :sswitch_7
    .end sparse-switch
.end method

.method public a(Llxz;)V
    .locals 4

    .prologue
    .line 190
    iget-object v0, p0, Lmmk;->a:Lmks;

    if-eqz v0, :cond_0

    .line 191
    const/4 v0, 0x1

    iget-object v1, p0, Lmmk;->a:Lmks;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 193
    :cond_0
    iget-object v0, p0, Lmmk;->b:Lmml;

    if-eqz v0, :cond_1

    .line 194
    const/4 v0, 0x2

    iget-object v1, p0, Lmmk;->b:Lmml;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 196
    :cond_1
    iget-object v0, p0, Lmmk;->c:Ljava/lang/Long;

    if-eqz v0, :cond_2

    .line 197
    const/4 v0, 0x3

    iget-object v1, p0, Lmmk;->c:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Llxz;->b(IJ)V

    .line 199
    :cond_2
    iget-object v0, p0, Lmmk;->d:Ljava/lang/Long;

    if-eqz v0, :cond_3

    .line 200
    const/4 v0, 0x4

    iget-object v1, p0, Lmmk;->d:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Llxz;->b(IJ)V

    .line 202
    :cond_3
    iget-object v0, p0, Lmmk;->e:Ljava/lang/Integer;

    if-eqz v0, :cond_4

    .line 203
    const/4 v0, 0x5

    iget-object v1, p0, Lmmk;->e:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->c(II)V

    .line 205
    :cond_4
    iget-object v0, p0, Lmmk;->f:[Lmml;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lmmk;->f:[Lmml;

    array-length v0, v0

    if-lez v0, :cond_6

    .line 206
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lmmk;->f:[Lmml;

    array-length v1, v1

    if-ge v0, v1, :cond_6

    .line 207
    iget-object v1, p0, Lmmk;->f:[Lmml;

    aget-object v1, v1, v0

    .line 208
    if-eqz v1, :cond_5

    .line 209
    const/4 v2, 0x6

    invoke-virtual {p1, v2, v1}, Llxz;->b(ILlyi;)V

    .line 206
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 213
    :cond_6
    iget-object v0, p0, Lmmk;->g:Lmks;

    if-eqz v0, :cond_7

    .line 214
    const/4 v0, 0x7

    iget-object v1, p0, Lmmk;->g:Lmks;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 216
    :cond_7
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 217
    return-void
.end method

.method protected b()I
    .locals 5

    .prologue
    .line 221
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 222
    iget-object v1, p0, Lmmk;->a:Lmks;

    if-eqz v1, :cond_0

    .line 223
    const/4 v1, 0x1

    iget-object v2, p0, Lmmk;->a:Lmks;

    .line 224
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 226
    :cond_0
    iget-object v1, p0, Lmmk;->b:Lmml;

    if-eqz v1, :cond_1

    .line 227
    const/4 v1, 0x2

    iget-object v2, p0, Lmmk;->b:Lmml;

    .line 228
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 230
    :cond_1
    iget-object v1, p0, Lmmk;->c:Ljava/lang/Long;

    if-eqz v1, :cond_2

    .line 231
    const/4 v1, 0x3

    iget-object v2, p0, Lmmk;->c:Ljava/lang/Long;

    .line 232
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Llxz;->e(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 234
    :cond_2
    iget-object v1, p0, Lmmk;->d:Ljava/lang/Long;

    if-eqz v1, :cond_3

    .line 235
    const/4 v1, 0x4

    iget-object v2, p0, Lmmk;->d:Ljava/lang/Long;

    .line 236
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Llxz;->e(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 238
    :cond_3
    iget-object v1, p0, Lmmk;->e:Ljava/lang/Integer;

    if-eqz v1, :cond_4

    .line 239
    const/4 v1, 0x5

    iget-object v2, p0, Lmmk;->e:Ljava/lang/Integer;

    .line 240
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Llxz;->f(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 242
    :cond_4
    iget-object v1, p0, Lmmk;->f:[Lmml;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lmmk;->f:[Lmml;

    array-length v1, v1

    if-lez v1, :cond_7

    .line 243
    const/4 v1, 0x0

    move v4, v1

    move v1, v0

    move v0, v4

    :goto_0
    iget-object v2, p0, Lmmk;->f:[Lmml;

    array-length v2, v2

    if-ge v0, v2, :cond_6

    .line 244
    iget-object v2, p0, Lmmk;->f:[Lmml;

    aget-object v2, v2, v0

    .line 245
    if-eqz v2, :cond_5

    .line 246
    const/4 v3, 0x6

    .line 247
    invoke-static {v3, v2}, Llxz;->d(ILlyi;)I

    move-result v2

    add-int/2addr v1, v2

    .line 243
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_6
    move v0, v1

    .line 251
    :cond_7
    iget-object v1, p0, Lmmk;->g:Lmks;

    if-eqz v1, :cond_8

    .line 252
    const/4 v1, 0x7

    iget-object v2, p0, Lmmk;->g:Lmks;

    .line 253
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 255
    :cond_8
    return v0
.end method
