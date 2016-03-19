.class public final Llby;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Llby;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile h:[Llby;


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:[I

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:Llbv;

.field public g:Lmsu;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 91
    invoke-direct {p0}, Llyb;-><init>()V

    .line 1096
    iput-object v1, p0, Llby;->a:Ljava/lang/String;

    .line 1097
    iput-object v1, p0, Llby;->b:Ljava/lang/String;

    .line 1098
    sget-object v0, Llyo;->a:[I

    iput-object v0, p0, Llby;->c:[I

    .line 1099
    iput-object v1, p0, Llby;->d:Ljava/lang/String;

    .line 1100
    iput-object v1, p0, Llby;->e:Ljava/lang/String;

    .line 1101
    iput-object v1, p0, Llby;->f:Llbv;

    .line 1102
    iput-object v1, p0, Llby;->g:Lmsu;

    .line 1103
    iput-object v1, p0, Llby;->eD:Llyd;

    .line 1104
    const/4 v0, -0x1

    iput v0, p0, Llby;->eE:I

    .line 93
    return-void
.end method

.method public static d()[Llby;
    .locals 2

    .prologue
    .line 57
    sget-object v0, Llby;->h:[Llby;

    if-nez v0, :cond_1

    .line 58
    sget-object v1, Llyf;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 60
    :try_start_0
    sget-object v0, Llby;->h:[Llby;

    if-nez v0, :cond_0

    .line 61
    const/4 v0, 0x0

    new-array v0, v0, [Llby;

    sput-object v0, Llby;->h:[Llby;

    .line 63
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 65
    :cond_1
    sget-object v0, Llby;->h:[Llby;

    return-object v0

    .line 63
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
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 1178
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 1179
    sparse-switch v0, :sswitch_data_0

    .line 1183
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1184
    :sswitch_0
    return-object p0

    .line 1189
    :sswitch_1
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Llby;->a:Ljava/lang/String;

    goto :goto_0

    .line 1193
    :sswitch_2
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Llby;->b:Ljava/lang/String;

    goto :goto_0

    .line 1197
    :sswitch_3
    const/16 v0, 0x18

    .line 1198
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v4

    .line 1199
    new-array v5, v4, [I

    move v3, v2

    move v1, v2

    .line 1201
    :goto_1
    if-ge v3, v4, :cond_2

    .line 1202
    if-eqz v3, :cond_1

    .line 1203
    invoke-virtual {p1}, Llxy;->a()I

    .line 1205
    :cond_1
    invoke-virtual {p1}, Llxy;->f()I

    move-result v6

    .line 1206
    sparse-switch v6, :sswitch_data_1

    move v0, v1

    .line 1201
    :goto_2
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    move v1, v0

    goto :goto_1

    .line 1244
    :sswitch_4
    add-int/lit8 v0, v1, 0x1

    aput v6, v5, v1

    goto :goto_2

    .line 1248
    :cond_2
    if-eqz v1, :cond_0

    .line 1249
    iget-object v0, p0, Llby;->c:[I

    if-nez v0, :cond_3

    move v0, v2

    .line 1250
    :goto_3
    if-nez v0, :cond_4

    array-length v3, v5

    if-ne v1, v3, :cond_4

    .line 1251
    iput-object v5, p0, Llby;->c:[I

    goto :goto_0

    .line 1249
    :cond_3
    iget-object v0, p0, Llby;->c:[I

    array-length v0, v0

    goto :goto_3

    .line 1253
    :cond_4
    add-int v3, v0, v1

    new-array v3, v3, [I

    .line 1254
    if-eqz v0, :cond_5

    .line 1255
    iget-object v4, p0, Llby;->c:[I

    invoke-static {v4, v2, v3, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1257
    :cond_5
    invoke-static {v5, v2, v3, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1258
    iput-object v3, p0, Llby;->c:[I

    goto :goto_0

    .line 1264
    :sswitch_5
    invoke-virtual {p1}, Llxy;->p()I

    move-result v0

    .line 1265
    invoke-virtual {p1, v0}, Llxy;->c(I)I

    move-result v3

    .line 1268
    invoke-virtual {p1}, Llxy;->r()I

    move-result v1

    move v0, v2

    .line 1269
    :goto_4
    invoke-virtual {p1}, Llxy;->q()I

    move-result v4

    if-lez v4, :cond_6

    .line 1270
    invoke-virtual {p1}, Llxy;->f()I

    move-result v4

    sparse-switch v4, :sswitch_data_2

    goto :goto_4

    .line 1308
    :sswitch_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 1312
    :cond_6
    if-eqz v0, :cond_a

    .line 1313
    invoke-virtual {p1, v1}, Llxy;->e(I)V

    .line 1314
    iget-object v1, p0, Llby;->c:[I

    if-nez v1, :cond_8

    move v1, v2

    .line 1315
    :goto_5
    add-int/2addr v0, v1

    new-array v4, v0, [I

    .line 1316
    if-eqz v1, :cond_7

    .line 1317
    iget-object v0, p0, Llby;->c:[I

    invoke-static {v0, v2, v4, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1319
    :cond_7
    :goto_6
    invoke-virtual {p1}, Llxy;->q()I

    move-result v0

    if-lez v0, :cond_9

    .line 1320
    invoke-virtual {p1}, Llxy;->f()I

    move-result v5

    .line 1321
    sparse-switch v5, :sswitch_data_3

    goto :goto_6

    .line 1359
    :sswitch_7
    add-int/lit8 v0, v1, 0x1

    aput v5, v4, v1

    move v1, v0

    goto :goto_6

    .line 1314
    :cond_8
    iget-object v1, p0, Llby;->c:[I

    array-length v1, v1

    goto :goto_5

    .line 1363
    :cond_9
    iput-object v4, p0, Llby;->c:[I

    .line 1365
    :cond_a
    invoke-virtual {p1, v3}, Llxy;->d(I)V

    goto/16 :goto_0

    .line 1369
    :sswitch_8
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Llby;->d:Ljava/lang/String;

    goto/16 :goto_0

    .line 1373
    :sswitch_9
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Llby;->e:Ljava/lang/String;

    goto/16 :goto_0

    .line 1377
    :sswitch_a
    iget-object v0, p0, Llby;->g:Lmsu;

    if-nez v0, :cond_b

    .line 1378
    new-instance v0, Lmsu;

    invoke-direct {v0}, Lmsu;-><init>()V

    iput-object v0, p0, Llby;->g:Lmsu;

    .line 1380
    :cond_b
    iget-object v0, p0, Llby;->g:Lmsu;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto/16 :goto_0

    .line 1384
    :sswitch_b
    iget-object v0, p0, Llby;->f:Llbv;

    if-nez v0, :cond_c

    .line 1385
    new-instance v0, Llbv;

    invoke-direct {v0}, Llbv;-><init>()V

    iput-object v0, p0, Llby;->f:Llbv;

    .line 1387
    :cond_c
    iget-object v0, p0, Llby;->f:Llbv;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto/16 :goto_0

    .line 1179
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x18 -> :sswitch_3
        0x1a -> :sswitch_5
        0x2a -> :sswitch_8
        0x32 -> :sswitch_9
        0x7a -> :sswitch_a
        0xfa2 -> :sswitch_b
    .end sparse-switch

    .line 1206
    :sswitch_data_1
    .sparse-switch
        0x0 -> :sswitch_4
        0x1 -> :sswitch_4
        0x2 -> :sswitch_4
        0x3 -> :sswitch_4
        0x4 -> :sswitch_4
        0x5 -> :sswitch_4
        0x6 -> :sswitch_4
        0x7 -> :sswitch_4
        0x9 -> :sswitch_4
        0xa -> :sswitch_4
        0xb -> :sswitch_4
        0xc -> :sswitch_4
        0x51 -> :sswitch_4
        0x52 -> :sswitch_4
        0x53 -> :sswitch_4
        0x54 -> :sswitch_4
        0x55 -> :sswitch_4
        0x81 -> :sswitch_4
        0xa1 -> :sswitch_4
        0xa3 -> :sswitch_4
        0xa4 -> :sswitch_4
        0xa5 -> :sswitch_4
        0xa6 -> :sswitch_4
        0xa7 -> :sswitch_4
        0xa8 -> :sswitch_4
        0xa9 -> :sswitch_4
        0xd1 -> :sswitch_4
        0xd3 -> :sswitch_4
        0xd4 -> :sswitch_4
        0xd5 -> :sswitch_4
        0xd7 -> :sswitch_4
        0xd8 -> :sswitch_4
        0x511 -> :sswitch_4
        0x512 -> :sswitch_4
        0xa91 -> :sswitch_4
        0x5111 -> :sswitch_4
        0x5121 -> :sswitch_4
    .end sparse-switch

    .line 1270
    :sswitch_data_2
    .sparse-switch
        0x0 -> :sswitch_6
        0x1 -> :sswitch_6
        0x2 -> :sswitch_6
        0x3 -> :sswitch_6
        0x4 -> :sswitch_6
        0x5 -> :sswitch_6
        0x6 -> :sswitch_6
        0x7 -> :sswitch_6
        0x9 -> :sswitch_6
        0xa -> :sswitch_6
        0xb -> :sswitch_6
        0xc -> :sswitch_6
        0x51 -> :sswitch_6
        0x52 -> :sswitch_6
        0x53 -> :sswitch_6
        0x54 -> :sswitch_6
        0x55 -> :sswitch_6
        0x81 -> :sswitch_6
        0xa1 -> :sswitch_6
        0xa3 -> :sswitch_6
        0xa4 -> :sswitch_6
        0xa5 -> :sswitch_6
        0xa6 -> :sswitch_6
        0xa7 -> :sswitch_6
        0xa8 -> :sswitch_6
        0xa9 -> :sswitch_6
        0xd1 -> :sswitch_6
        0xd3 -> :sswitch_6
        0xd4 -> :sswitch_6
        0xd5 -> :sswitch_6
        0xd7 -> :sswitch_6
        0xd8 -> :sswitch_6
        0x511 -> :sswitch_6
        0x512 -> :sswitch_6
        0xa91 -> :sswitch_6
        0x5111 -> :sswitch_6
        0x5121 -> :sswitch_6
    .end sparse-switch

    .line 1321
    :sswitch_data_3
    .sparse-switch
        0x0 -> :sswitch_7
        0x1 -> :sswitch_7
        0x2 -> :sswitch_7
        0x3 -> :sswitch_7
        0x4 -> :sswitch_7
        0x5 -> :sswitch_7
        0x6 -> :sswitch_7
        0x7 -> :sswitch_7
        0x9 -> :sswitch_7
        0xa -> :sswitch_7
        0xb -> :sswitch_7
        0xc -> :sswitch_7
        0x51 -> :sswitch_7
        0x52 -> :sswitch_7
        0x53 -> :sswitch_7
        0x54 -> :sswitch_7
        0x55 -> :sswitch_7
        0x81 -> :sswitch_7
        0xa1 -> :sswitch_7
        0xa3 -> :sswitch_7
        0xa4 -> :sswitch_7
        0xa5 -> :sswitch_7
        0xa6 -> :sswitch_7
        0xa7 -> :sswitch_7
        0xa8 -> :sswitch_7
        0xa9 -> :sswitch_7
        0xd1 -> :sswitch_7
        0xd3 -> :sswitch_7
        0xd4 -> :sswitch_7
        0xd5 -> :sswitch_7
        0xd7 -> :sswitch_7
        0xd8 -> :sswitch_7
        0x511 -> :sswitch_7
        0x512 -> :sswitch_7
        0xa91 -> :sswitch_7
        0x5111 -> :sswitch_7
        0x5121 -> :sswitch_7
    .end sparse-switch
.end method

.method public a(Llxz;)V
    .locals 3

    .prologue
    .line 111
    const/4 v0, 0x1

    iget-object v1, p0, Llby;->a:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 112
    iget-object v0, p0, Llby;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 113
    const/4 v0, 0x2

    iget-object v1, p0, Llby;->b:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 115
    :cond_0
    iget-object v0, p0, Llby;->c:[I

    if-eqz v0, :cond_1

    iget-object v0, p0, Llby;->c:[I

    array-length v0, v0

    if-lez v0, :cond_1

    .line 116
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Llby;->c:[I

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 117
    const/4 v1, 0x3

    iget-object v2, p0, Llby;->c:[I

    aget v2, v2, v0

    invoke-virtual {p1, v1, v2}, Llxz;->a(II)V

    .line 116
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 120
    :cond_1
    iget-object v0, p0, Llby;->d:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 121
    const/4 v0, 0x5

    iget-object v1, p0, Llby;->d:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 123
    :cond_2
    iget-object v0, p0, Llby;->e:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 124
    const/4 v0, 0x6

    iget-object v1, p0, Llby;->e:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 126
    :cond_3
    iget-object v0, p0, Llby;->g:Lmsu;

    if-eqz v0, :cond_4

    .line 127
    const/16 v0, 0xf

    iget-object v1, p0, Llby;->g:Lmsu;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 129
    :cond_4
    iget-object v0, p0, Llby;->f:Llbv;

    if-eqz v0, :cond_5

    .line 130
    const/16 v0, 0x1f4

    iget-object v1, p0, Llby;->f:Llbv;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 132
    :cond_5
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 133
    return-void
.end method

.method protected b()I
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 137
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 138
    const/4 v2, 0x1

    iget-object v3, p0, Llby;->a:Ljava/lang/String;

    .line 139
    invoke-static {v2, v3}, Llxz;->b(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    .line 140
    iget-object v2, p0, Llby;->b:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 141
    const/4 v2, 0x2

    iget-object v3, p0, Llby;->b:Ljava/lang/String;

    .line 142
    invoke-static {v2, v3}, Llxz;->b(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    .line 144
    :cond_0
    iget-object v2, p0, Llby;->c:[I

    if-eqz v2, :cond_2

    iget-object v2, p0, Llby;->c:[I

    array-length v2, v2

    if-lez v2, :cond_2

    move v2, v1

    .line 146
    :goto_0
    iget-object v3, p0, Llby;->c:[I

    array-length v3, v3

    if-ge v1, v3, :cond_1

    .line 147
    iget-object v3, p0, Llby;->c:[I

    aget v3, v3, v1

    .line 149
    invoke-static {v3}, Llxz;->e(I)I

    move-result v3

    add-int/2addr v2, v3

    .line 146
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 151
    :cond_1
    add-int/2addr v0, v2

    .line 152
    iget-object v1, p0, Llby;->c:[I

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    .line 154
    :cond_2
    iget-object v1, p0, Llby;->d:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 155
    const/4 v1, 0x5

    iget-object v2, p0, Llby;->d:Ljava/lang/String;

    .line 156
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 158
    :cond_3
    iget-object v1, p0, Llby;->e:Ljava/lang/String;

    if-eqz v1, :cond_4

    .line 159
    const/4 v1, 0x6

    iget-object v2, p0, Llby;->e:Ljava/lang/String;

    .line 160
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 162
    :cond_4
    iget-object v1, p0, Llby;->g:Lmsu;

    if-eqz v1, :cond_5

    .line 163
    const/16 v1, 0xf

    iget-object v2, p0, Llby;->g:Lmsu;

    .line 164
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 166
    :cond_5
    iget-object v1, p0, Llby;->f:Llbv;

    if-eqz v1, :cond_6

    .line 167
    const/16 v1, 0x1f4

    iget-object v2, p0, Llby;->f:Llbv;

    .line 168
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 170
    :cond_6
    return v0
.end method
