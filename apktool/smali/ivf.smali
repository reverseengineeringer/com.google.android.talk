.class public final Livf;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Livf;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Livh;

.field public b:Livb;

.field public c:Liuz;

.field public d:[I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 148
    invoke-direct {p0}, Llyb;-><init>()V

    .line 1153
    iput-object v1, p0, Livf;->a:Livh;

    .line 1154
    iput-object v1, p0, Livf;->b:Livb;

    .line 1155
    iput-object v1, p0, Livf;->c:Liuz;

    .line 1156
    sget-object v0, Llyo;->a:[I

    iput-object v0, p0, Livf;->d:[I

    .line 1157
    iput-object v1, p0, Livf;->eD:Llyd;

    .line 1158
    const/4 v0, -0x1

    iput v0, p0, Livf;->eE:I

    .line 150
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 1215
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 1216
    sparse-switch v0, :sswitch_data_0

    .line 1220
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1221
    :sswitch_0
    return-object p0

    .line 1226
    :sswitch_1
    iget-object v0, p0, Livf;->a:Livh;

    if-nez v0, :cond_1

    .line 1227
    new-instance v0, Livh;

    invoke-direct {v0}, Livh;-><init>()V

    iput-object v0, p0, Livf;->a:Livh;

    .line 1229
    :cond_1
    iget-object v0, p0, Livf;->a:Livh;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 1233
    :sswitch_2
    iget-object v0, p0, Livf;->b:Livb;

    if-nez v0, :cond_2

    .line 1234
    new-instance v0, Livb;

    invoke-direct {v0}, Livb;-><init>()V

    iput-object v0, p0, Livf;->b:Livb;

    .line 1236
    :cond_2
    iget-object v0, p0, Livf;->b:Livb;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 1240
    :sswitch_3
    iget-object v0, p0, Livf;->c:Liuz;

    if-nez v0, :cond_3

    .line 1241
    new-instance v0, Liuz;

    invoke-direct {v0}, Liuz;-><init>()V

    iput-object v0, p0, Livf;->c:Liuz;

    .line 1243
    :cond_3
    iget-object v0, p0, Livf;->c:Liuz;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 1247
    :sswitch_4
    const/16 v0, 0x20

    .line 1248
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v4

    .line 1249
    new-array v5, v4, [I

    move v3, v2

    move v1, v2

    .line 1251
    :goto_1
    if-ge v3, v4, :cond_5

    .line 1252
    if-eqz v3, :cond_4

    .line 1253
    invoke-virtual {p1}, Llxy;->a()I

    .line 1255
    :cond_4
    invoke-virtual {p1}, Llxy;->f()I

    move-result v6

    .line 1256
    packed-switch v6, :pswitch_data_0

    move v0, v1

    .line 1251
    :goto_2
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    move v1, v0

    goto :goto_1

    .line 1269
    :pswitch_0
    add-int/lit8 v0, v1, 0x1

    aput v6, v5, v1

    goto :goto_2

    .line 1273
    :cond_5
    if-eqz v1, :cond_0

    .line 1274
    iget-object v0, p0, Livf;->d:[I

    if-nez v0, :cond_6

    move v0, v2

    .line 1275
    :goto_3
    if-nez v0, :cond_7

    array-length v3, v5

    if-ne v1, v3, :cond_7

    .line 1276
    iput-object v5, p0, Livf;->d:[I

    goto :goto_0

    .line 1274
    :cond_6
    iget-object v0, p0, Livf;->d:[I

    array-length v0, v0

    goto :goto_3

    .line 1278
    :cond_7
    add-int v3, v0, v1

    new-array v3, v3, [I

    .line 1279
    if-eqz v0, :cond_8

    .line 1280
    iget-object v4, p0, Livf;->d:[I

    invoke-static {v4, v2, v3, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1282
    :cond_8
    invoke-static {v5, v2, v3, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1283
    iput-object v3, p0, Livf;->d:[I

    goto/16 :goto_0

    .line 1289
    :sswitch_5
    invoke-virtual {p1}, Llxy;->p()I

    move-result v0

    .line 1290
    invoke-virtual {p1, v0}, Llxy;->c(I)I

    move-result v3

    .line 1293
    invoke-virtual {p1}, Llxy;->r()I

    move-result v1

    move v0, v2

    .line 1294
    :goto_4
    invoke-virtual {p1}, Llxy;->q()I

    move-result v4

    if-lez v4, :cond_9

    .line 1295
    invoke-virtual {p1}, Llxy;->f()I

    move-result v4

    packed-switch v4, :pswitch_data_1

    goto :goto_4

    .line 1308
    :pswitch_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 1312
    :cond_9
    if-eqz v0, :cond_d

    .line 1313
    invoke-virtual {p1, v1}, Llxy;->e(I)V

    .line 1314
    iget-object v1, p0, Livf;->d:[I

    if-nez v1, :cond_b

    move v1, v2

    .line 1315
    :goto_5
    add-int/2addr v0, v1

    new-array v4, v0, [I

    .line 1316
    if-eqz v1, :cond_a

    .line 1317
    iget-object v0, p0, Livf;->d:[I

    invoke-static {v0, v2, v4, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1319
    :cond_a
    :goto_6
    invoke-virtual {p1}, Llxy;->q()I

    move-result v0

    if-lez v0, :cond_c

    .line 1320
    invoke-virtual {p1}, Llxy;->f()I

    move-result v5

    .line 1321
    packed-switch v5, :pswitch_data_2

    goto :goto_6

    .line 1334
    :pswitch_2
    add-int/lit8 v0, v1, 0x1

    aput v5, v4, v1

    move v1, v0

    goto :goto_6

    .line 1314
    :cond_b
    iget-object v1, p0, Livf;->d:[I

    array-length v1, v1

    goto :goto_5

    .line 1338
    :cond_c
    iput-object v4, p0, Livf;->d:[I

    .line 1340
    :cond_d
    invoke-virtual {p1, v3}, Llxy;->d(I)V

    goto/16 :goto_0

    .line 1216
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x20 -> :sswitch_4
        0x22 -> :sswitch_5
    .end sparse-switch

    .line 1256
    :pswitch_data_0
    .packed-switch 0x0
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

    .line 1295
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch

    .line 1321
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
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
    .line 165
    iget-object v0, p0, Livf;->a:Livh;

    if-eqz v0, :cond_0

    .line 166
    const/4 v0, 0x1

    iget-object v1, p0, Livf;->a:Livh;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 168
    :cond_0
    iget-object v0, p0, Livf;->b:Livb;

    if-eqz v0, :cond_1

    .line 169
    const/4 v0, 0x2

    iget-object v1, p0, Livf;->b:Livb;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 171
    :cond_1
    iget-object v0, p0, Livf;->c:Liuz;

    if-eqz v0, :cond_2

    .line 172
    const/4 v0, 0x3

    iget-object v1, p0, Livf;->c:Liuz;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 174
    :cond_2
    iget-object v0, p0, Livf;->d:[I

    if-eqz v0, :cond_3

    iget-object v0, p0, Livf;->d:[I

    array-length v0, v0

    if-lez v0, :cond_3

    .line 175
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Livf;->d:[I

    array-length v1, v1

    if-ge v0, v1, :cond_3

    .line 176
    const/4 v1, 0x4

    iget-object v2, p0, Livf;->d:[I

    aget v2, v2, v0

    invoke-virtual {p1, v1, v2}, Llxz;->a(II)V

    .line 175
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 179
    :cond_3
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 180
    return-void
.end method

.method protected b()I
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 184
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 185
    iget-object v2, p0, Livf;->a:Livh;

    if-eqz v2, :cond_0

    .line 186
    const/4 v2, 0x1

    iget-object v3, p0, Livf;->a:Livh;

    .line 187
    invoke-static {v2, v3}, Llxz;->d(ILlyi;)I

    move-result v2

    add-int/2addr v0, v2

    .line 189
    :cond_0
    iget-object v2, p0, Livf;->b:Livb;

    if-eqz v2, :cond_1

    .line 190
    const/4 v2, 0x2

    iget-object v3, p0, Livf;->b:Livb;

    .line 191
    invoke-static {v2, v3}, Llxz;->d(ILlyi;)I

    move-result v2

    add-int/2addr v0, v2

    .line 193
    :cond_1
    iget-object v2, p0, Livf;->c:Liuz;

    if-eqz v2, :cond_2

    .line 194
    const/4 v2, 0x3

    iget-object v3, p0, Livf;->c:Liuz;

    .line 195
    invoke-static {v2, v3}, Llxz;->d(ILlyi;)I

    move-result v2

    add-int/2addr v0, v2

    .line 197
    :cond_2
    iget-object v2, p0, Livf;->d:[I

    if-eqz v2, :cond_4

    iget-object v2, p0, Livf;->d:[I

    array-length v2, v2

    if-lez v2, :cond_4

    move v2, v1

    .line 199
    :goto_0
    iget-object v3, p0, Livf;->d:[I

    array-length v3, v3

    if-ge v1, v3, :cond_3

    .line 200
    iget-object v3, p0, Livf;->d:[I

    aget v3, v3, v1

    .line 202
    invoke-static {v3}, Llxz;->e(I)I

    move-result v3

    add-int/2addr v2, v3

    .line 199
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 204
    :cond_3
    add-int/2addr v0, v2

    .line 205
    iget-object v1, p0, Livf;->d:[I

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    .line 207
    :cond_4
    return v0
.end method
