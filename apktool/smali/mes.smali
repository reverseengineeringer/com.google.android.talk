.class public final Lmes;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Lmes;",
        ">;"
    }
.end annotation


# instance fields
.field public a:[I

.field public b:[I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Llyb;-><init>()V

    .line 32
    sget-object v0, Llyo;->a:[I

    iput-object v0, p0, Lmes;->a:[I

    .line 33
    sget-object v0, Llyo;->a:[I

    iput-object v0, p0, Lmes;->b:[I

    .line 34
    const/4 v0, 0x0

    iput-object v0, p0, Lmes;->eD:Llyd;

    .line 35
    const/4 v0, -0x1

    iput v0, p0, Lmes;->eE:I

    .line 36
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 1085
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 1086
    sparse-switch v0, :sswitch_data_0

    .line 1090
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1091
    :sswitch_0
    return-object p0

    .line 1096
    :sswitch_1
    const/16 v0, 0x8

    .line 1097
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v4

    .line 1098
    new-array v5, v4, [I

    move v3, v2

    move v1, v2

    .line 1100
    :goto_1
    if-ge v3, v4, :cond_2

    .line 1101
    if-eqz v3, :cond_1

    .line 1102
    invoke-virtual {p1}, Llxy;->a()I

    .line 1104
    :cond_1
    invoke-virtual {p1}, Llxy;->f()I

    move-result v6

    .line 1105
    sparse-switch v6, :sswitch_data_1

    move v0, v1

    .line 1100
    :goto_2
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    move v1, v0

    goto :goto_1

    .line 1134
    :sswitch_2
    add-int/lit8 v0, v1, 0x1

    aput v6, v5, v1

    goto :goto_2

    .line 1138
    :cond_2
    if-eqz v1, :cond_0

    .line 1139
    iget-object v0, p0, Lmes;->a:[I

    if-nez v0, :cond_3

    move v0, v2

    .line 1140
    :goto_3
    if-nez v0, :cond_4

    array-length v3, v5

    if-ne v1, v3, :cond_4

    .line 1141
    iput-object v5, p0, Lmes;->a:[I

    goto :goto_0

    .line 1139
    :cond_3
    iget-object v0, p0, Lmes;->a:[I

    array-length v0, v0

    goto :goto_3

    .line 1143
    :cond_4
    add-int v3, v0, v1

    new-array v3, v3, [I

    .line 1144
    if-eqz v0, :cond_5

    .line 1145
    iget-object v4, p0, Lmes;->a:[I

    invoke-static {v4, v2, v3, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1147
    :cond_5
    invoke-static {v5, v2, v3, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1148
    iput-object v3, p0, Lmes;->a:[I

    goto :goto_0

    .line 1154
    :sswitch_3
    invoke-virtual {p1}, Llxy;->p()I

    move-result v0

    .line 1155
    invoke-virtual {p1, v0}, Llxy;->c(I)I

    move-result v3

    .line 1158
    invoke-virtual {p1}, Llxy;->r()I

    move-result v1

    move v0, v2

    .line 1159
    :goto_4
    invoke-virtual {p1}, Llxy;->q()I

    move-result v4

    if-lez v4, :cond_6

    .line 1160
    invoke-virtual {p1}, Llxy;->f()I

    move-result v4

    sparse-switch v4, :sswitch_data_2

    goto :goto_4

    .line 1189
    :sswitch_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 1193
    :cond_6
    if-eqz v0, :cond_a

    .line 1194
    invoke-virtual {p1, v1}, Llxy;->e(I)V

    .line 1195
    iget-object v1, p0, Lmes;->a:[I

    if-nez v1, :cond_8

    move v1, v2

    .line 1196
    :goto_5
    add-int/2addr v0, v1

    new-array v4, v0, [I

    .line 1197
    if-eqz v1, :cond_7

    .line 1198
    iget-object v0, p0, Lmes;->a:[I

    invoke-static {v0, v2, v4, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1200
    :cond_7
    :goto_6
    invoke-virtual {p1}, Llxy;->q()I

    move-result v0

    if-lez v0, :cond_9

    .line 1201
    invoke-virtual {p1}, Llxy;->f()I

    move-result v5

    .line 1202
    sparse-switch v5, :sswitch_data_3

    goto :goto_6

    .line 1231
    :sswitch_5
    add-int/lit8 v0, v1, 0x1

    aput v5, v4, v1

    move v1, v0

    goto :goto_6

    .line 1195
    :cond_8
    iget-object v1, p0, Lmes;->a:[I

    array-length v1, v1

    goto :goto_5

    .line 1235
    :cond_9
    iput-object v4, p0, Lmes;->a:[I

    .line 1237
    :cond_a
    invoke-virtual {p1, v3}, Llxy;->d(I)V

    goto/16 :goto_0

    .line 1241
    :sswitch_6
    const/16 v0, 0x10

    .line 1242
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v4

    .line 1243
    new-array v5, v4, [I

    move v3, v2

    move v1, v2

    .line 1245
    :goto_7
    if-ge v3, v4, :cond_c

    .line 1246
    if-eqz v3, :cond_b

    .line 1247
    invoke-virtual {p1}, Llxy;->a()I

    .line 1249
    :cond_b
    invoke-virtual {p1}, Llxy;->f()I

    move-result v6

    .line 1250
    packed-switch v6, :pswitch_data_0

    move v0, v1

    .line 1245
    :goto_8
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    move v1, v0

    goto :goto_7

    .line 1255
    :pswitch_0
    add-int/lit8 v0, v1, 0x1

    aput v6, v5, v1

    goto :goto_8

    .line 1259
    :cond_c
    if-eqz v1, :cond_0

    .line 1260
    iget-object v0, p0, Lmes;->b:[I

    if-nez v0, :cond_d

    move v0, v2

    .line 1261
    :goto_9
    if-nez v0, :cond_e

    array-length v3, v5

    if-ne v1, v3, :cond_e

    .line 1262
    iput-object v5, p0, Lmes;->b:[I

    goto/16 :goto_0

    .line 1260
    :cond_d
    iget-object v0, p0, Lmes;->b:[I

    array-length v0, v0

    goto :goto_9

    .line 1264
    :cond_e
    add-int v3, v0, v1

    new-array v3, v3, [I

    .line 1265
    if-eqz v0, :cond_f

    .line 1266
    iget-object v4, p0, Lmes;->b:[I

    invoke-static {v4, v2, v3, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1268
    :cond_f
    invoke-static {v5, v2, v3, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1269
    iput-object v3, p0, Lmes;->b:[I

    goto/16 :goto_0

    .line 1275
    :sswitch_7
    invoke-virtual {p1}, Llxy;->p()I

    move-result v0

    .line 1276
    invoke-virtual {p1, v0}, Llxy;->c(I)I

    move-result v3

    .line 1279
    invoke-virtual {p1}, Llxy;->r()I

    move-result v1

    move v0, v2

    .line 1280
    :goto_a
    invoke-virtual {p1}, Llxy;->q()I

    move-result v4

    if-lez v4, :cond_10

    .line 1281
    invoke-virtual {p1}, Llxy;->f()I

    move-result v4

    packed-switch v4, :pswitch_data_1

    goto :goto_a

    .line 1286
    :pswitch_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 1290
    :cond_10
    if-eqz v0, :cond_14

    .line 1291
    invoke-virtual {p1, v1}, Llxy;->e(I)V

    .line 1292
    iget-object v1, p0, Lmes;->b:[I

    if-nez v1, :cond_12

    move v1, v2

    .line 1293
    :goto_b
    add-int/2addr v0, v1

    new-array v4, v0, [I

    .line 1294
    if-eqz v1, :cond_11

    .line 1295
    iget-object v0, p0, Lmes;->b:[I

    invoke-static {v0, v2, v4, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1297
    :cond_11
    :goto_c
    invoke-virtual {p1}, Llxy;->q()I

    move-result v0

    if-lez v0, :cond_13

    .line 1298
    invoke-virtual {p1}, Llxy;->f()I

    move-result v5

    .line 1299
    packed-switch v5, :pswitch_data_2

    goto :goto_c

    .line 1304
    :pswitch_2
    add-int/lit8 v0, v1, 0x1

    aput v5, v4, v1

    move v1, v0

    goto :goto_c

    .line 1292
    :cond_12
    iget-object v1, p0, Lmes;->b:[I

    array-length v1, v1

    goto :goto_b

    .line 1308
    :cond_13
    iput-object v4, p0, Lmes;->b:[I

    .line 1310
    :cond_14
    invoke-virtual {p1, v3}, Llxy;->d(I)V

    goto/16 :goto_0

    .line 1086
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0xa -> :sswitch_3
        0x10 -> :sswitch_6
        0x12 -> :sswitch_7
    .end sparse-switch

    .line 1105
    :sswitch_data_1
    .sparse-switch
        0x0 -> :sswitch_2
        0x45a9b0e -> :sswitch_2
        0x45a9b4b -> :sswitch_2
        0x45a9bb0 -> :sswitch_2
        0x45a9c52 -> :sswitch_2
        0x45adac9 -> :sswitch_2
        0x4a08b72 -> :sswitch_2
        0x4afd2c2 -> :sswitch_2
        0x554e471 -> :sswitch_2
        0x5770ceb -> :sswitch_2
        0x5ae22df -> :sswitch_2
        0x5be8531 -> :sswitch_2
        0x5e64fed -> :sswitch_2
        0x60d3d26 -> :sswitch_2
        0x62e1eb6 -> :sswitch_2
        0x631723f -> :sswitch_2
        0x636168c -> :sswitch_2
        0x637bfe5 -> :sswitch_2
        0x637cdf0 -> :sswitch_2
        0x64e9f6e -> :sswitch_2
        0x6501699 -> :sswitch_2
        0x652f985 -> :sswitch_2
        0x65805f5 -> :sswitch_2
        0x6584cbc -> :sswitch_2
        0x65aca1c -> :sswitch_2
        0x65da049 -> :sswitch_2
        0x661e556 -> :sswitch_2
        0x6b19923 -> :sswitch_2
    .end sparse-switch

    .line 1160
    :sswitch_data_2
    .sparse-switch
        0x0 -> :sswitch_4
        0x45a9b0e -> :sswitch_4
        0x45a9b4b -> :sswitch_4
        0x45a9bb0 -> :sswitch_4
        0x45a9c52 -> :sswitch_4
        0x45adac9 -> :sswitch_4
        0x4a08b72 -> :sswitch_4
        0x4afd2c2 -> :sswitch_4
        0x554e471 -> :sswitch_4
        0x5770ceb -> :sswitch_4
        0x5ae22df -> :sswitch_4
        0x5be8531 -> :sswitch_4
        0x5e64fed -> :sswitch_4
        0x60d3d26 -> :sswitch_4
        0x62e1eb6 -> :sswitch_4
        0x631723f -> :sswitch_4
        0x636168c -> :sswitch_4
        0x637bfe5 -> :sswitch_4
        0x637cdf0 -> :sswitch_4
        0x64e9f6e -> :sswitch_4
        0x6501699 -> :sswitch_4
        0x652f985 -> :sswitch_4
        0x65805f5 -> :sswitch_4
        0x6584cbc -> :sswitch_4
        0x65aca1c -> :sswitch_4
        0x65da049 -> :sswitch_4
        0x661e556 -> :sswitch_4
        0x6b19923 -> :sswitch_4
    .end sparse-switch

    .line 1202
    :sswitch_data_3
    .sparse-switch
        0x0 -> :sswitch_5
        0x45a9b0e -> :sswitch_5
        0x45a9b4b -> :sswitch_5
        0x45a9bb0 -> :sswitch_5
        0x45a9c52 -> :sswitch_5
        0x45adac9 -> :sswitch_5
        0x4a08b72 -> :sswitch_5
        0x4afd2c2 -> :sswitch_5
        0x554e471 -> :sswitch_5
        0x5770ceb -> :sswitch_5
        0x5ae22df -> :sswitch_5
        0x5be8531 -> :sswitch_5
        0x5e64fed -> :sswitch_5
        0x60d3d26 -> :sswitch_5
        0x62e1eb6 -> :sswitch_5
        0x631723f -> :sswitch_5
        0x636168c -> :sswitch_5
        0x637bfe5 -> :sswitch_5
        0x637cdf0 -> :sswitch_5
        0x64e9f6e -> :sswitch_5
        0x6501699 -> :sswitch_5
        0x652f985 -> :sswitch_5
        0x65805f5 -> :sswitch_5
        0x6584cbc -> :sswitch_5
        0x65aca1c -> :sswitch_5
        0x65da049 -> :sswitch_5
        0x661e556 -> :sswitch_5
        0x6b19923 -> :sswitch_5
    .end sparse-switch

    .line 1250
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    .line 1281
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch

    .line 1299
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public a(Llxz;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 41
    iget-object v0, p0, Lmes;->a:[I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmes;->a:[I

    array-length v0, v0

    if-lez v0, :cond_0

    move v0, v1

    .line 42
    :goto_0
    iget-object v2, p0, Lmes;->a:[I

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 43
    const/4 v2, 0x1

    iget-object v3, p0, Lmes;->a:[I

    aget v3, v3, v0

    invoke-virtual {p1, v2, v3}, Llxz;->a(II)V

    .line 42
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 46
    :cond_0
    iget-object v0, p0, Lmes;->b:[I

    if-eqz v0, :cond_1

    iget-object v0, p0, Lmes;->b:[I

    array-length v0, v0

    if-lez v0, :cond_1

    .line 47
    :goto_1
    iget-object v0, p0, Lmes;->b:[I

    array-length v0, v0

    if-ge v1, v0, :cond_1

    .line 48
    const/4 v0, 0x2

    iget-object v2, p0, Lmes;->b:[I

    aget v2, v2, v1

    invoke-virtual {p1, v0, v2}, Llxz;->a(II)V

    .line 47
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 51
    :cond_1
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 52
    return-void
.end method

.method protected b()I
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 56
    invoke-super {p0}, Llyb;->b()I

    move-result v3

    .line 57
    iget-object v0, p0, Lmes;->a:[I

    if-eqz v0, :cond_3

    iget-object v0, p0, Lmes;->a:[I

    array-length v0, v0

    if-lez v0, :cond_3

    move v0, v1

    move v2, v1

    .line 59
    :goto_0
    iget-object v4, p0, Lmes;->a:[I

    array-length v4, v4

    if-ge v0, v4, :cond_0

    .line 60
    iget-object v4, p0, Lmes;->a:[I

    aget v4, v4, v0

    .line 62
    invoke-static {v4}, Llxz;->e(I)I

    move-result v4

    add-int/2addr v2, v4

    .line 59
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 64
    :cond_0
    add-int v0, v3, v2

    .line 65
    iget-object v2, p0, Lmes;->a:[I

    array-length v2, v2

    mul-int/lit8 v2, v2, 0x1

    add-int/2addr v0, v2

    .line 67
    :goto_1
    iget-object v2, p0, Lmes;->b:[I

    if-eqz v2, :cond_2

    iget-object v2, p0, Lmes;->b:[I

    array-length v2, v2

    if-lez v2, :cond_2

    move v2, v1

    .line 69
    :goto_2
    iget-object v3, p0, Lmes;->b:[I

    array-length v3, v3

    if-ge v1, v3, :cond_1

    .line 70
    iget-object v3, p0, Lmes;->b:[I

    aget v3, v3, v1

    .line 72
    invoke-static {v3}, Llxz;->e(I)I

    move-result v3

    add-int/2addr v2, v3

    .line 69
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 74
    :cond_1
    add-int/2addr v0, v2

    .line 75
    iget-object v1, p0, Lmes;->b:[I

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    .line 77
    :cond_2
    return v0

    :cond_3
    move v0, v3

    goto :goto_1
.end method
