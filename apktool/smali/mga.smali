.class public final Lmga;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Lmga;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:I

.field public c:Lmfo;

.field public d:Lmfs;

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public g:[B

.field public h:Ljava/lang/Long;

.field public i:Ljava/lang/Long;

.field public j:Llyl;

.field public k:Llyl;

.field public l:Llyl;

.field public m:Ljava/lang/Long;

.field public n:Llyl;

.field public o:Ljava/lang/Long;

.field public p:Ljava/lang/String;

.field public q:Ljava/lang/Long;

.field public r:Ljava/lang/Long;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 79
    invoke-direct {p0}, Llyb;-><init>()V

    .line 80
    iput-object v1, p0, Lmga;->a:Ljava/lang/String;

    .line 81
    const/high16 v0, -0x80000000

    iput v0, p0, Lmga;->b:I

    .line 82
    iput-object v1, p0, Lmga;->c:Lmfo;

    .line 83
    iput-object v1, p0, Lmga;->d:Lmfs;

    .line 84
    iput-object v1, p0, Lmga;->e:Ljava/lang/String;

    .line 85
    iput-object v1, p0, Lmga;->f:Ljava/lang/String;

    .line 86
    iput-object v1, p0, Lmga;->g:[B

    .line 87
    iput-object v1, p0, Lmga;->h:Ljava/lang/Long;

    .line 88
    iput-object v1, p0, Lmga;->i:Ljava/lang/Long;

    .line 89
    iput-object v1, p0, Lmga;->j:Llyl;

    .line 90
    iput-object v1, p0, Lmga;->k:Llyl;

    .line 91
    iput-object v1, p0, Lmga;->l:Llyl;

    .line 92
    iput-object v1, p0, Lmga;->m:Ljava/lang/Long;

    .line 93
    iput-object v1, p0, Lmga;->n:Llyl;

    .line 94
    iput-object v1, p0, Lmga;->o:Ljava/lang/Long;

    .line 95
    iput-object v1, p0, Lmga;->p:Ljava/lang/String;

    .line 96
    iput-object v1, p0, Lmga;->q:Ljava/lang/Long;

    .line 97
    iput-object v1, p0, Lmga;->r:Ljava/lang/Long;

    .line 98
    iput-object v1, p0, Lmga;->eD:Llyd;

    .line 99
    const/4 v0, -0x1

    iput v0, p0, Lmga;->eE:I

    .line 100
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 2

    .prologue
    .line 1241
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 1242
    sparse-switch v0, :sswitch_data_0

    .line 1246
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1247
    :sswitch_0
    return-object p0

    .line 1252
    :sswitch_1
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmga;->a:Ljava/lang/String;

    goto :goto_0

    .line 1256
    :sswitch_2
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmga;->f:Ljava/lang/String;

    goto :goto_0

    .line 1260
    :sswitch_3
    invoke-virtual {p1}, Llxy;->k()[B

    move-result-object v0

    iput-object v0, p0, Lmga;->g:[B

    goto :goto_0

    .line 1264
    :sswitch_4
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmga;->e:Ljava/lang/String;

    goto :goto_0

    .line 1268
    :sswitch_5
    iget-object v0, p0, Lmga;->c:Lmfo;

    if-nez v0, :cond_1

    .line 1269
    new-instance v0, Lmfo;

    invoke-direct {v0}, Lmfo;-><init>()V

    iput-object v0, p0, Lmga;->c:Lmfo;

    .line 1271
    :cond_1
    iget-object v0, p0, Lmga;->c:Lmfo;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 1275
    :sswitch_6
    iget-object v0, p0, Lmga;->d:Lmfs;

    if-nez v0, :cond_2

    .line 1276
    new-instance v0, Lmfs;

    invoke-direct {v0}, Lmfs;-><init>()V

    iput-object v0, p0, Lmga;->d:Lmfs;

    .line 1278
    :cond_2
    iget-object v0, p0, Lmga;->d:Lmfs;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 1282
    :sswitch_7
    invoke-virtual {p1}, Llxy;->e()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lmga;->h:Ljava/lang/Long;

    goto :goto_0

    .line 1286
    :sswitch_8
    invoke-virtual {p1}, Llxy;->e()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lmga;->o:Ljava/lang/Long;

    goto :goto_0

    .line 1290
    :sswitch_9
    invoke-virtual {p1}, Llxy;->e()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lmga;->i:Ljava/lang/Long;

    goto :goto_0

    .line 1294
    :sswitch_a
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmga;->p:Ljava/lang/String;

    goto :goto_0

    .line 1298
    :sswitch_b
    invoke-virtual {p1}, Llxy;->e()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lmga;->m:Ljava/lang/Long;

    goto :goto_0

    .line 1302
    :sswitch_c
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    .line 1303
    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_0

    .line 1313
    :pswitch_1
    iput v0, p0, Lmga;->b:I

    goto/16 :goto_0

    .line 1319
    :sswitch_d
    invoke-virtual {p1}, Llxy;->e()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lmga;->q:Ljava/lang/Long;

    goto/16 :goto_0

    .line 1323
    :sswitch_e
    invoke-virtual {p1}, Llxy;->e()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lmga;->r:Ljava/lang/Long;

    goto/16 :goto_0

    .line 1327
    :sswitch_f
    iget-object v0, p0, Lmga;->j:Llyl;

    if-nez v0, :cond_3

    .line 1328
    new-instance v0, Llyl;

    invoke-direct {v0}, Llyl;-><init>()V

    iput-object v0, p0, Lmga;->j:Llyl;

    .line 1330
    :cond_3
    iget-object v0, p0, Lmga;->j:Llyl;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto/16 :goto_0

    .line 1334
    :sswitch_10
    iget-object v0, p0, Lmga;->k:Llyl;

    if-nez v0, :cond_4

    .line 1335
    new-instance v0, Llyl;

    invoke-direct {v0}, Llyl;-><init>()V

    iput-object v0, p0, Lmga;->k:Llyl;

    .line 1337
    :cond_4
    iget-object v0, p0, Lmga;->k:Llyl;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto/16 :goto_0

    .line 1341
    :sswitch_11
    iget-object v0, p0, Lmga;->l:Llyl;

    if-nez v0, :cond_5

    .line 1342
    new-instance v0, Llyl;

    invoke-direct {v0}, Llyl;-><init>()V

    iput-object v0, p0, Lmga;->l:Llyl;

    .line 1344
    :cond_5
    iget-object v0, p0, Lmga;->l:Llyl;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto/16 :goto_0

    .line 1348
    :sswitch_12
    iget-object v0, p0, Lmga;->n:Llyl;

    if-nez v0, :cond_6

    .line 1349
    new-instance v0, Llyl;

    invoke-direct {v0}, Llyl;-><init>()V

    iput-object v0, p0, Lmga;->n:Llyl;

    .line 1351
    :cond_6
    iget-object v0, p0, Lmga;->n:Llyl;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto/16 :goto_0

    .line 1242
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x1a -> :sswitch_2
        0x2a -> :sswitch_3
        0x32 -> :sswitch_4
        0x3a -> :sswitch_5
        0x42 -> :sswitch_6
        0x48 -> :sswitch_7
        0x50 -> :sswitch_8
        0x58 -> :sswitch_9
        0x62 -> :sswitch_a
        0x68 -> :sswitch_b
        0x78 -> :sswitch_c
        0x80 -> :sswitch_d
        0x88 -> :sswitch_e
        0x92 -> :sswitch_f
        0x9a -> :sswitch_10
        0xa2 -> :sswitch_11
        0xaa -> :sswitch_12
    .end sparse-switch

    .line 1303
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public a(Llxz;)V
    .locals 4

    .prologue
    .line 105
    const/4 v0, 0x1

    iget-object v1, p0, Lmga;->a:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 106
    iget-object v0, p0, Lmga;->f:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 107
    const/4 v0, 0x3

    iget-object v1, p0, Lmga;->f:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 109
    :cond_0
    iget-object v0, p0, Lmga;->g:[B

    if-eqz v0, :cond_1

    .line 110
    const/4 v0, 0x5

    iget-object v1, p0, Lmga;->g:[B

    invoke-virtual {p1, v0, v1}, Llxz;->a(I[B)V

    .line 112
    :cond_1
    iget-object v0, p0, Lmga;->e:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 113
    const/4 v0, 0x6

    iget-object v1, p0, Lmga;->e:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 115
    :cond_2
    iget-object v0, p0, Lmga;->c:Lmfo;

    if-eqz v0, :cond_3

    .line 116
    const/4 v0, 0x7

    iget-object v1, p0, Lmga;->c:Lmfo;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 118
    :cond_3
    iget-object v0, p0, Lmga;->d:Lmfs;

    if-eqz v0, :cond_4

    .line 119
    const/16 v0, 0x8

    iget-object v1, p0, Lmga;->d:Lmfs;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 121
    :cond_4
    iget-object v0, p0, Lmga;->h:Ljava/lang/Long;

    if-eqz v0, :cond_5

    .line 122
    const/16 v0, 0x9

    iget-object v1, p0, Lmga;->h:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Llxz;->b(IJ)V

    .line 124
    :cond_5
    iget-object v0, p0, Lmga;->o:Ljava/lang/Long;

    if-eqz v0, :cond_6

    .line 125
    const/16 v0, 0xa

    iget-object v1, p0, Lmga;->o:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Llxz;->b(IJ)V

    .line 127
    :cond_6
    iget-object v0, p0, Lmga;->i:Ljava/lang/Long;

    if-eqz v0, :cond_7

    .line 128
    const/16 v0, 0xb

    iget-object v1, p0, Lmga;->i:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Llxz;->b(IJ)V

    .line 130
    :cond_7
    iget-object v0, p0, Lmga;->p:Ljava/lang/String;

    if-eqz v0, :cond_8

    .line 131
    const/16 v0, 0xc

    iget-object v1, p0, Lmga;->p:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 133
    :cond_8
    iget-object v0, p0, Lmga;->m:Ljava/lang/Long;

    if-eqz v0, :cond_9

    .line 134
    const/16 v0, 0xd

    iget-object v1, p0, Lmga;->m:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Llxz;->b(IJ)V

    .line 136
    :cond_9
    iget v0, p0, Lmga;->b:I

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_a

    .line 137
    const/16 v0, 0xf

    iget v1, p0, Lmga;->b:I

    invoke-virtual {p1, v0, v1}, Llxz;->a(II)V

    .line 139
    :cond_a
    iget-object v0, p0, Lmga;->q:Ljava/lang/Long;

    if-eqz v0, :cond_b

    .line 140
    const/16 v0, 0x10

    iget-object v1, p0, Lmga;->q:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Llxz;->b(IJ)V

    .line 142
    :cond_b
    iget-object v0, p0, Lmga;->r:Ljava/lang/Long;

    if-eqz v0, :cond_c

    .line 143
    const/16 v0, 0x11

    iget-object v1, p0, Lmga;->r:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Llxz;->b(IJ)V

    .line 145
    :cond_c
    iget-object v0, p0, Lmga;->j:Llyl;

    if-eqz v0, :cond_d

    .line 146
    const/16 v0, 0x12

    iget-object v1, p0, Lmga;->j:Llyl;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 148
    :cond_d
    iget-object v0, p0, Lmga;->k:Llyl;

    if-eqz v0, :cond_e

    .line 149
    const/16 v0, 0x13

    iget-object v1, p0, Lmga;->k:Llyl;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 151
    :cond_e
    iget-object v0, p0, Lmga;->l:Llyl;

    if-eqz v0, :cond_f

    .line 152
    const/16 v0, 0x14

    iget-object v1, p0, Lmga;->l:Llyl;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 154
    :cond_f
    iget-object v0, p0, Lmga;->n:Llyl;

    if-eqz v0, :cond_10

    .line 155
    const/16 v0, 0x15

    iget-object v1, p0, Lmga;->n:Llyl;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 157
    :cond_10
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 158
    return-void
.end method

.method protected b()I
    .locals 4

    .prologue
    .line 162
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 163
    const/4 v1, 0x1

    iget-object v2, p0, Lmga;->a:Ljava/lang/String;

    .line 164
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 165
    iget-object v1, p0, Lmga;->f:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 166
    const/4 v1, 0x3

    iget-object v2, p0, Lmga;->f:Ljava/lang/String;

    .line 167
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 169
    :cond_0
    iget-object v1, p0, Lmga;->g:[B

    if-eqz v1, :cond_1

    .line 170
    const/4 v1, 0x5

    iget-object v2, p0, Lmga;->g:[B

    .line 171
    invoke-static {v1, v2}, Llxz;->b(I[B)I

    move-result v1

    add-int/2addr v0, v1

    .line 173
    :cond_1
    iget-object v1, p0, Lmga;->e:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 174
    const/4 v1, 0x6

    iget-object v2, p0, Lmga;->e:Ljava/lang/String;

    .line 175
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 177
    :cond_2
    iget-object v1, p0, Lmga;->c:Lmfo;

    if-eqz v1, :cond_3

    .line 178
    const/4 v1, 0x7

    iget-object v2, p0, Lmga;->c:Lmfo;

    .line 179
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 181
    :cond_3
    iget-object v1, p0, Lmga;->d:Lmfs;

    if-eqz v1, :cond_4

    .line 182
    const/16 v1, 0x8

    iget-object v2, p0, Lmga;->d:Lmfs;

    .line 183
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 185
    :cond_4
    iget-object v1, p0, Lmga;->h:Ljava/lang/Long;

    if-eqz v1, :cond_5

    .line 186
    const/16 v1, 0x9

    iget-object v2, p0, Lmga;->h:Ljava/lang/Long;

    .line 187
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Llxz;->e(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 189
    :cond_5
    iget-object v1, p0, Lmga;->o:Ljava/lang/Long;

    if-eqz v1, :cond_6

    .line 190
    const/16 v1, 0xa

    iget-object v2, p0, Lmga;->o:Ljava/lang/Long;

    .line 191
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Llxz;->e(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 193
    :cond_6
    iget-object v1, p0, Lmga;->i:Ljava/lang/Long;

    if-eqz v1, :cond_7

    .line 194
    const/16 v1, 0xb

    iget-object v2, p0, Lmga;->i:Ljava/lang/Long;

    .line 195
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Llxz;->e(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 197
    :cond_7
    iget-object v1, p0, Lmga;->p:Ljava/lang/String;

    if-eqz v1, :cond_8

    .line 198
    const/16 v1, 0xc

    iget-object v2, p0, Lmga;->p:Ljava/lang/String;

    .line 199
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 201
    :cond_8
    iget-object v1, p0, Lmga;->m:Ljava/lang/Long;

    if-eqz v1, :cond_9

    .line 202
    const/16 v1, 0xd

    iget-object v2, p0, Lmga;->m:Ljava/lang/Long;

    .line 203
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Llxz;->e(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 205
    :cond_9
    iget v1, p0, Lmga;->b:I

    const/high16 v2, -0x80000000

    if-eq v1, v2, :cond_a

    .line 206
    const/16 v1, 0xf

    iget v2, p0, Lmga;->b:I

    .line 207
    invoke-static {v1, v2}, Llxz;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 209
    :cond_a
    iget-object v1, p0, Lmga;->q:Ljava/lang/Long;

    if-eqz v1, :cond_b

    .line 210
    const/16 v1, 0x10

    iget-object v2, p0, Lmga;->q:Ljava/lang/Long;

    .line 211
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Llxz;->e(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 213
    :cond_b
    iget-object v1, p0, Lmga;->r:Ljava/lang/Long;

    if-eqz v1, :cond_c

    .line 214
    const/16 v1, 0x11

    iget-object v2, p0, Lmga;->r:Ljava/lang/Long;

    .line 215
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Llxz;->e(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 217
    :cond_c
    iget-object v1, p0, Lmga;->j:Llyl;

    if-eqz v1, :cond_d

    .line 218
    const/16 v1, 0x12

    iget-object v2, p0, Lmga;->j:Llyl;

    .line 219
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 221
    :cond_d
    iget-object v1, p0, Lmga;->k:Llyl;

    if-eqz v1, :cond_e

    .line 222
    const/16 v1, 0x13

    iget-object v2, p0, Lmga;->k:Llyl;

    .line 223
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 225
    :cond_e
    iget-object v1, p0, Lmga;->l:Llyl;

    if-eqz v1, :cond_f

    .line 226
    const/16 v1, 0x14

    iget-object v2, p0, Lmga;->l:Llyl;

    .line 227
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 229
    :cond_f
    iget-object v1, p0, Lmga;->n:Llyl;

    if-eqz v1, :cond_10

    .line 230
    const/16 v1, 0x15

    iget-object v2, p0, Lmga;->n:Llyl;

    .line 231
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 233
    :cond_10
    return v0
.end method
