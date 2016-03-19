.class public final Ljfd;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Ljfd;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile q:[Ljfd;


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/Integer;

.field public d:Ljfa;

.field public e:Ljava/lang/String;

.field public f:Ljgk;

.field public g:Ljava/lang/String;

.field public h:Ljava/lang/Long;

.field public i:Ljava/lang/Long;

.field public j:Ljava/lang/String;

.field public k:Ljava/lang/String;

.field public l:Ljfb;

.field public m:Ljava/lang/String;

.field public n:Ljgg;

.field public o:[Ljgj;

.field public p:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 86
    invoke-direct {p0}, Llyb;-><init>()V

    .line 1091
    iput-object v1, p0, Ljfd;->a:Ljava/lang/String;

    .line 1092
    iput-object v1, p0, Ljfd;->b:Ljava/lang/String;

    .line 1093
    iput-object v1, p0, Ljfd;->c:Ljava/lang/Integer;

    .line 1094
    iput-object v1, p0, Ljfd;->d:Ljfa;

    .line 1095
    iput-object v1, p0, Ljfd;->e:Ljava/lang/String;

    .line 1096
    iput-object v1, p0, Ljfd;->f:Ljgk;

    .line 1097
    iput-object v1, p0, Ljfd;->g:Ljava/lang/String;

    .line 1098
    iput-object v1, p0, Ljfd;->h:Ljava/lang/Long;

    .line 1099
    iput-object v1, p0, Ljfd;->i:Ljava/lang/Long;

    .line 1100
    iput-object v1, p0, Ljfd;->j:Ljava/lang/String;

    .line 1101
    iput-object v1, p0, Ljfd;->k:Ljava/lang/String;

    .line 1102
    iput-object v1, p0, Ljfd;->l:Ljfb;

    .line 1103
    iput-object v1, p0, Ljfd;->m:Ljava/lang/String;

    .line 1104
    iput-object v1, p0, Ljfd;->n:Ljgg;

    .line 1105
    invoke-static {}, Ljgj;->d()[Ljgj;

    move-result-object v0

    iput-object v0, p0, Ljfd;->o:[Ljgj;

    .line 1106
    iput-object v1, p0, Ljfd;->p:Ljava/lang/String;

    .line 1107
    iput-object v1, p0, Ljfd;->eD:Llyd;

    .line 1108
    const/4 v0, -0x1

    iput v0, p0, Ljfd;->eE:I

    .line 88
    return-void
.end method

.method public static d()[Ljfd;
    .locals 2

    .prologue
    .line 25
    sget-object v0, Ljfd;->q:[Ljfd;

    if-nez v0, :cond_1

    .line 26
    sget-object v1, Llyf;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 28
    :try_start_0
    sget-object v0, Ljfd;->q:[Ljfd;

    if-nez v0, :cond_0

    .line 29
    const/4 v0, 0x0

    new-array v0, v0, [Ljfd;

    sput-object v0, Ljfd;->q:[Ljfd;

    .line 31
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    :cond_1
    sget-object v0, Ljfd;->q:[Ljfd;

    return-object v0

    .line 31
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

    .line 1251
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 1252
    sparse-switch v0, :sswitch_data_0

    .line 1256
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1257
    :sswitch_0
    return-object p0

    .line 1262
    :sswitch_1
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljfd;->b:Ljava/lang/String;

    goto :goto_0

    .line 1266
    :sswitch_2
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljfd;->g:Ljava/lang/String;

    goto :goto_0

    .line 1270
    :sswitch_3
    invoke-virtual {p1}, Llxy;->e()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Ljfd;->h:Ljava/lang/Long;

    goto :goto_0

    .line 1274
    :sswitch_4
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljfd;->j:Ljava/lang/String;

    goto :goto_0

    .line 1278
    :sswitch_5
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    .line 1279
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 1285
    :pswitch_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Ljfd;->c:Ljava/lang/Integer;

    goto :goto_0

    .line 1291
    :sswitch_6
    iget-object v0, p0, Ljfd;->l:Ljfb;

    if-nez v0, :cond_1

    .line 1292
    new-instance v0, Ljfb;

    invoke-direct {v0}, Ljfb;-><init>()V

    iput-object v0, p0, Ljfd;->l:Ljfb;

    .line 1294
    :cond_1
    iget-object v0, p0, Ljfd;->l:Ljfb;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 1298
    :sswitch_7
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljfd;->m:Ljava/lang/String;

    goto :goto_0

    .line 1302
    :sswitch_8
    iget-object v0, p0, Ljfd;->d:Ljfa;

    if-nez v0, :cond_2

    .line 1303
    new-instance v0, Ljfa;

    invoke-direct {v0}, Ljfa;-><init>()V

    iput-object v0, p0, Ljfd;->d:Ljfa;

    .line 1305
    :cond_2
    iget-object v0, p0, Ljfd;->d:Ljfa;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 1309
    :sswitch_9
    iget-object v0, p0, Ljfd;->n:Ljgg;

    if-nez v0, :cond_3

    .line 1310
    new-instance v0, Ljgg;

    invoke-direct {v0}, Ljgg;-><init>()V

    iput-object v0, p0, Ljfd;->n:Ljgg;

    .line 1312
    :cond_3
    iget-object v0, p0, Ljfd;->n:Ljgg;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 1316
    :sswitch_a
    const/16 v0, 0x52

    .line 1317
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v2

    .line 1318
    iget-object v0, p0, Ljfd;->o:[Ljgj;

    if-nez v0, :cond_5

    move v0, v1

    .line 1319
    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Ljgj;

    .line 1321
    if-eqz v0, :cond_4

    .line 1322
    iget-object v3, p0, Ljfd;->o:[Ljgj;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1324
    :cond_4
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_6

    .line 1325
    new-instance v3, Ljgj;

    invoke-direct {v3}, Ljgj;-><init>()V

    aput-object v3, v2, v0

    .line 1326
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Llxy;->a(Llyi;)V

    .line 1327
    invoke-virtual {p1}, Llxy;->a()I

    .line 1324
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1318
    :cond_5
    iget-object v0, p0, Ljfd;->o:[Ljgj;

    array-length v0, v0

    goto :goto_1

    .line 1330
    :cond_6
    new-instance v3, Ljgj;

    invoke-direct {v3}, Ljgj;-><init>()V

    aput-object v3, v2, v0

    .line 1331
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    .line 1332
    iput-object v2, p0, Ljfd;->o:[Ljgj;

    goto/16 :goto_0

    .line 1336
    :sswitch_b
    invoke-virtual {p1}, Llxy;->e()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Ljfd;->i:Ljava/lang/Long;

    goto/16 :goto_0

    .line 1340
    :sswitch_c
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljfd;->a:Ljava/lang/String;

    goto/16 :goto_0

    .line 1344
    :sswitch_d
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljfd;->e:Ljava/lang/String;

    goto/16 :goto_0

    .line 1348
    :sswitch_e
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljfd;->k:Ljava/lang/String;

    goto/16 :goto_0

    .line 1352
    :sswitch_f
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljfd;->p:Ljava/lang/String;

    goto/16 :goto_0

    .line 1356
    :sswitch_10
    iget-object v0, p0, Ljfd;->f:Ljgk;

    if-nez v0, :cond_7

    .line 1357
    new-instance v0, Ljgk;

    invoke-direct {v0}, Ljgk;-><init>()V

    iput-object v0, p0, Ljfd;->f:Ljgk;

    .line 1359
    :cond_7
    iget-object v0, p0, Ljfd;->f:Ljgk;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto/16 :goto_0

    .line 1252
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x18 -> :sswitch_3
        0x22 -> :sswitch_4
        0x28 -> :sswitch_5
        0x32 -> :sswitch_6
        0x3a -> :sswitch_7
        0x42 -> :sswitch_8
        0x4a -> :sswitch_9
        0x52 -> :sswitch_a
        0x58 -> :sswitch_b
        0x62 -> :sswitch_c
        0x6a -> :sswitch_d
        0x72 -> :sswitch_e
        0x7a -> :sswitch_f
        0x82 -> :sswitch_10
    .end sparse-switch

    .line 1279
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public a(Llxz;)V
    .locals 4

    .prologue
    .line 115
    iget-object v0, p0, Ljfd;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 116
    const/4 v0, 0x1

    iget-object v1, p0, Ljfd;->b:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 118
    :cond_0
    iget-object v0, p0, Ljfd;->g:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 119
    const/4 v0, 0x2

    iget-object v1, p0, Ljfd;->g:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 121
    :cond_1
    iget-object v0, p0, Ljfd;->h:Ljava/lang/Long;

    if-eqz v0, :cond_2

    .line 122
    const/4 v0, 0x3

    iget-object v1, p0, Ljfd;->h:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Llxz;->b(IJ)V

    .line 124
    :cond_2
    iget-object v0, p0, Ljfd;->j:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 125
    const/4 v0, 0x4

    iget-object v1, p0, Ljfd;->j:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 127
    :cond_3
    iget-object v0, p0, Ljfd;->c:Ljava/lang/Integer;

    if-eqz v0, :cond_4

    .line 128
    const/4 v0, 0x5

    iget-object v1, p0, Ljfd;->c:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(II)V

    .line 130
    :cond_4
    iget-object v0, p0, Ljfd;->l:Ljfb;

    if-eqz v0, :cond_5

    .line 131
    const/4 v0, 0x6

    iget-object v1, p0, Ljfd;->l:Ljfb;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 133
    :cond_5
    iget-object v0, p0, Ljfd;->m:Ljava/lang/String;

    if-eqz v0, :cond_6

    .line 134
    const/4 v0, 0x7

    iget-object v1, p0, Ljfd;->m:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 136
    :cond_6
    iget-object v0, p0, Ljfd;->d:Ljfa;

    if-eqz v0, :cond_7

    .line 137
    const/16 v0, 0x8

    iget-object v1, p0, Ljfd;->d:Ljfa;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 139
    :cond_7
    iget-object v0, p0, Ljfd;->n:Ljgg;

    if-eqz v0, :cond_8

    .line 140
    const/16 v0, 0x9

    iget-object v1, p0, Ljfd;->n:Ljgg;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 142
    :cond_8
    iget-object v0, p0, Ljfd;->o:[Ljgj;

    if-eqz v0, :cond_a

    iget-object v0, p0, Ljfd;->o:[Ljgj;

    array-length v0, v0

    if-lez v0, :cond_a

    .line 143
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Ljfd;->o:[Ljgj;

    array-length v1, v1

    if-ge v0, v1, :cond_a

    .line 144
    iget-object v1, p0, Ljfd;->o:[Ljgj;

    aget-object v1, v1, v0

    .line 145
    if-eqz v1, :cond_9

    .line 146
    const/16 v2, 0xa

    invoke-virtual {p1, v2, v1}, Llxz;->b(ILlyi;)V

    .line 143
    :cond_9
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 150
    :cond_a
    iget-object v0, p0, Ljfd;->i:Ljava/lang/Long;

    if-eqz v0, :cond_b

    .line 151
    const/16 v0, 0xb

    iget-object v1, p0, Ljfd;->i:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Llxz;->b(IJ)V

    .line 153
    :cond_b
    iget-object v0, p0, Ljfd;->a:Ljava/lang/String;

    if-eqz v0, :cond_c

    .line 154
    const/16 v0, 0xc

    iget-object v1, p0, Ljfd;->a:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 156
    :cond_c
    iget-object v0, p0, Ljfd;->e:Ljava/lang/String;

    if-eqz v0, :cond_d

    .line 157
    const/16 v0, 0xd

    iget-object v1, p0, Ljfd;->e:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 159
    :cond_d
    iget-object v0, p0, Ljfd;->k:Ljava/lang/String;

    if-eqz v0, :cond_e

    .line 160
    const/16 v0, 0xe

    iget-object v1, p0, Ljfd;->k:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 162
    :cond_e
    iget-object v0, p0, Ljfd;->p:Ljava/lang/String;

    if-eqz v0, :cond_f

    .line 163
    const/16 v0, 0xf

    iget-object v1, p0, Ljfd;->p:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 165
    :cond_f
    iget-object v0, p0, Ljfd;->f:Ljgk;

    if-eqz v0, :cond_10

    .line 166
    const/16 v0, 0x10

    iget-object v1, p0, Ljfd;->f:Ljgk;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 168
    :cond_10
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 169
    return-void
.end method

.method protected b()I
    .locals 5

    .prologue
    .line 173
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 174
    iget-object v1, p0, Ljfd;->b:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 175
    const/4 v1, 0x1

    iget-object v2, p0, Ljfd;->b:Ljava/lang/String;

    .line 176
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 178
    :cond_0
    iget-object v1, p0, Ljfd;->g:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 179
    const/4 v1, 0x2

    iget-object v2, p0, Ljfd;->g:Ljava/lang/String;

    .line 180
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 182
    :cond_1
    iget-object v1, p0, Ljfd;->h:Ljava/lang/Long;

    if-eqz v1, :cond_2

    .line 183
    const/4 v1, 0x3

    iget-object v2, p0, Ljfd;->h:Ljava/lang/Long;

    .line 184
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Llxz;->e(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 186
    :cond_2
    iget-object v1, p0, Ljfd;->j:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 187
    const/4 v1, 0x4

    iget-object v2, p0, Ljfd;->j:Ljava/lang/String;

    .line 188
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 190
    :cond_3
    iget-object v1, p0, Ljfd;->c:Ljava/lang/Integer;

    if-eqz v1, :cond_4

    .line 191
    const/4 v1, 0x5

    iget-object v2, p0, Ljfd;->c:Ljava/lang/Integer;

    .line 192
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Llxz;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 194
    :cond_4
    iget-object v1, p0, Ljfd;->l:Ljfb;

    if-eqz v1, :cond_5

    .line 195
    const/4 v1, 0x6

    iget-object v2, p0, Ljfd;->l:Ljfb;

    .line 196
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 198
    :cond_5
    iget-object v1, p0, Ljfd;->m:Ljava/lang/String;

    if-eqz v1, :cond_6

    .line 199
    const/4 v1, 0x7

    iget-object v2, p0, Ljfd;->m:Ljava/lang/String;

    .line 200
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 202
    :cond_6
    iget-object v1, p0, Ljfd;->d:Ljfa;

    if-eqz v1, :cond_7

    .line 203
    const/16 v1, 0x8

    iget-object v2, p0, Ljfd;->d:Ljfa;

    .line 204
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 206
    :cond_7
    iget-object v1, p0, Ljfd;->n:Ljgg;

    if-eqz v1, :cond_8

    .line 207
    const/16 v1, 0x9

    iget-object v2, p0, Ljfd;->n:Ljgg;

    .line 208
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 210
    :cond_8
    iget-object v1, p0, Ljfd;->o:[Ljgj;

    if-eqz v1, :cond_b

    iget-object v1, p0, Ljfd;->o:[Ljgj;

    array-length v1, v1

    if-lez v1, :cond_b

    .line 211
    const/4 v1, 0x0

    move v4, v1

    move v1, v0

    move v0, v4

    :goto_0
    iget-object v2, p0, Ljfd;->o:[Ljgj;

    array-length v2, v2

    if-ge v0, v2, :cond_a

    .line 212
    iget-object v2, p0, Ljfd;->o:[Ljgj;

    aget-object v2, v2, v0

    .line 213
    if-eqz v2, :cond_9

    .line 214
    const/16 v3, 0xa

    .line 215
    invoke-static {v3, v2}, Llxz;->d(ILlyi;)I

    move-result v2

    add-int/2addr v1, v2

    .line 211
    :cond_9
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_a
    move v0, v1

    .line 219
    :cond_b
    iget-object v1, p0, Ljfd;->i:Ljava/lang/Long;

    if-eqz v1, :cond_c

    .line 220
    const/16 v1, 0xb

    iget-object v2, p0, Ljfd;->i:Ljava/lang/Long;

    .line 221
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Llxz;->e(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 223
    :cond_c
    iget-object v1, p0, Ljfd;->a:Ljava/lang/String;

    if-eqz v1, :cond_d

    .line 224
    const/16 v1, 0xc

    iget-object v2, p0, Ljfd;->a:Ljava/lang/String;

    .line 225
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 227
    :cond_d
    iget-object v1, p0, Ljfd;->e:Ljava/lang/String;

    if-eqz v1, :cond_e

    .line 228
    const/16 v1, 0xd

    iget-object v2, p0, Ljfd;->e:Ljava/lang/String;

    .line 229
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 231
    :cond_e
    iget-object v1, p0, Ljfd;->k:Ljava/lang/String;

    if-eqz v1, :cond_f

    .line 232
    const/16 v1, 0xe

    iget-object v2, p0, Ljfd;->k:Ljava/lang/String;

    .line 233
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 235
    :cond_f
    iget-object v1, p0, Ljfd;->p:Ljava/lang/String;

    if-eqz v1, :cond_10

    .line 236
    const/16 v1, 0xf

    iget-object v2, p0, Ljfd;->p:Ljava/lang/String;

    .line 237
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 239
    :cond_10
    iget-object v1, p0, Ljfd;->f:Ljgk;

    if-eqz v1, :cond_11

    .line 240
    const/16 v1, 0x10

    iget-object v2, p0, Ljfd;->f:Ljgk;

    .line 241
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 243
    :cond_11
    return v0
.end method
