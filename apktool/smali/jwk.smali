.class public final Ljwk;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Ljwk;",
        ">;"
    }
.end annotation


# instance fields
.field public a:[Ljwq;

.field public b:Ljava/lang/Integer;

.field public c:Ljava/lang/String;

.field public d:[Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/Integer;

.field public g:Ljava/lang/Integer;

.field public h:Ljava/lang/Integer;

.field public i:Ljava/lang/Integer;

.field public j:Ljava/lang/Integer;

.field public k:Ljava/lang/Integer;

.field public l:Ljava/lang/Integer;

.field public m:Ljava/lang/Integer;

.field public n:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 67
    invoke-direct {p0}, Llyb;-><init>()V

    .line 68
    invoke-static {}, Ljwq;->d()[Ljwq;

    move-result-object v0

    iput-object v0, p0, Ljwk;->a:[Ljwq;

    .line 69
    iput-object v1, p0, Ljwk;->b:Ljava/lang/Integer;

    .line 70
    iput-object v1, p0, Ljwk;->c:Ljava/lang/String;

    .line 71
    sget-object v0, Llyo;->f:[Ljava/lang/String;

    iput-object v0, p0, Ljwk;->d:[Ljava/lang/String;

    .line 72
    iput-object v1, p0, Ljwk;->e:Ljava/lang/String;

    .line 73
    iput-object v1, p0, Ljwk;->f:Ljava/lang/Integer;

    .line 74
    iput-object v1, p0, Ljwk;->g:Ljava/lang/Integer;

    .line 75
    iput-object v1, p0, Ljwk;->h:Ljava/lang/Integer;

    .line 76
    iput-object v1, p0, Ljwk;->i:Ljava/lang/Integer;

    .line 77
    iput-object v1, p0, Ljwk;->j:Ljava/lang/Integer;

    .line 78
    iput-object v1, p0, Ljwk;->k:Ljava/lang/Integer;

    .line 79
    iput-object v1, p0, Ljwk;->l:Ljava/lang/Integer;

    .line 80
    iput-object v1, p0, Ljwk;->m:Ljava/lang/Integer;

    .line 81
    iput-object v1, p0, Ljwk;->n:Ljava/lang/String;

    .line 82
    iput-object v1, p0, Ljwk;->eD:Llyd;

    .line 83
    const/4 v0, -0x1

    iput v0, p0, Ljwk;->eE:I

    .line 84
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 1226
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 1227
    sparse-switch v0, :sswitch_data_0

    .line 1231
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1232
    :sswitch_0
    return-object p0

    .line 1237
    :sswitch_1
    const/16 v0, 0xa

    .line 1238
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v2

    .line 1239
    iget-object v0, p0, Ljwk;->a:[Ljwq;

    if-nez v0, :cond_2

    move v0, v1

    .line 1240
    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Ljwq;

    .line 1242
    if-eqz v0, :cond_1

    .line 1243
    iget-object v3, p0, Ljwk;->a:[Ljwq;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1245
    :cond_1
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_3

    .line 1246
    new-instance v3, Ljwq;

    invoke-direct {v3}, Ljwq;-><init>()V

    aput-object v3, v2, v0

    .line 1247
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Llxy;->a(Llyi;)V

    .line 1248
    invoke-virtual {p1}, Llxy;->a()I

    .line 1245
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1239
    :cond_2
    iget-object v0, p0, Ljwk;->a:[Ljwq;

    array-length v0, v0

    goto :goto_1

    .line 1251
    :cond_3
    new-instance v3, Ljwq;

    invoke-direct {v3}, Ljwq;-><init>()V

    aput-object v3, v2, v0

    .line 1252
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    .line 1253
    iput-object v2, p0, Ljwk;->a:[Ljwq;

    goto :goto_0

    .line 1257
    :sswitch_2
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljwk;->c:Ljava/lang/String;

    goto :goto_0

    .line 1261
    :sswitch_3
    const/16 v0, 0x1a

    .line 1262
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v2

    .line 1263
    iget-object v0, p0, Ljwk;->d:[Ljava/lang/String;

    if-nez v0, :cond_5

    move v0, v1

    .line 1264
    :goto_3
    add-int/2addr v2, v0

    new-array v2, v2, [Ljava/lang/String;

    .line 1265
    if-eqz v0, :cond_4

    .line 1266
    iget-object v3, p0, Ljwk;->d:[Ljava/lang/String;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1268
    :cond_4
    :goto_4
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_6

    .line 1269
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    .line 1270
    invoke-virtual {p1}, Llxy;->a()I

    .line 1268
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 1263
    :cond_5
    iget-object v0, p0, Ljwk;->d:[Ljava/lang/String;

    array-length v0, v0

    goto :goto_3

    .line 1273
    :cond_6
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    .line 1274
    iput-object v2, p0, Ljwk;->d:[Ljava/lang/String;

    goto/16 :goto_0

    .line 1278
    :sswitch_4
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljwk;->e:Ljava/lang/String;

    goto/16 :goto_0

    .line 1282
    :sswitch_5
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Ljwk;->f:Ljava/lang/Integer;

    goto/16 :goto_0

    .line 1286
    :sswitch_6
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Ljwk;->g:Ljava/lang/Integer;

    goto/16 :goto_0

    .line 1290
    :sswitch_7
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Ljwk;->h:Ljava/lang/Integer;

    goto/16 :goto_0

    .line 1294
    :sswitch_8
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Ljwk;->i:Ljava/lang/Integer;

    goto/16 :goto_0

    .line 1298
    :sswitch_9
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Ljwk;->j:Ljava/lang/Integer;

    goto/16 :goto_0

    .line 1302
    :sswitch_a
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Ljwk;->k:Ljava/lang/Integer;

    goto/16 :goto_0

    .line 1306
    :sswitch_b
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Ljwk;->l:Ljava/lang/Integer;

    goto/16 :goto_0

    .line 1310
    :sswitch_c
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Ljwk;->m:Ljava/lang/Integer;

    goto/16 :goto_0

    .line 1314
    :sswitch_d
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljwk;->n:Ljava/lang/String;

    goto/16 :goto_0

    .line 1318
    :sswitch_e
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Ljwk;->b:Ljava/lang/Integer;

    goto/16 :goto_0

    .line 1227
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
        0x28 -> :sswitch_5
        0x30 -> :sswitch_6
        0x38 -> :sswitch_7
        0x40 -> :sswitch_8
        0x48 -> :sswitch_9
        0x50 -> :sswitch_a
        0x58 -> :sswitch_b
        0x60 -> :sswitch_c
        0x6a -> :sswitch_d
        0x70 -> :sswitch_e
    .end sparse-switch
.end method

.method public a(Llxz;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 89
    iget-object v0, p0, Ljwk;->a:[Ljwq;

    if-eqz v0, :cond_1

    iget-object v0, p0, Ljwk;->a:[Ljwq;

    array-length v0, v0

    if-lez v0, :cond_1

    move v0, v1

    .line 90
    :goto_0
    iget-object v2, p0, Ljwk;->a:[Ljwq;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 91
    iget-object v2, p0, Ljwk;->a:[Ljwq;

    aget-object v2, v2, v0

    .line 92
    if-eqz v2, :cond_0

    .line 93
    const/4 v3, 0x1

    invoke-virtual {p1, v3, v2}, Llxz;->b(ILlyi;)V

    .line 90
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 97
    :cond_1
    iget-object v0, p0, Ljwk;->c:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 98
    const/4 v0, 0x2

    iget-object v2, p0, Ljwk;->c:Ljava/lang/String;

    invoke-virtual {p1, v0, v2}, Llxz;->a(ILjava/lang/String;)V

    .line 100
    :cond_2
    iget-object v0, p0, Ljwk;->d:[Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v0, p0, Ljwk;->d:[Ljava/lang/String;

    array-length v0, v0

    if-lez v0, :cond_4

    .line 101
    :goto_1
    iget-object v0, p0, Ljwk;->d:[Ljava/lang/String;

    array-length v0, v0

    if-ge v1, v0, :cond_4

    .line 102
    iget-object v0, p0, Ljwk;->d:[Ljava/lang/String;

    aget-object v0, v0, v1

    .line 103
    if-eqz v0, :cond_3

    .line 104
    const/4 v2, 0x3

    invoke-virtual {p1, v2, v0}, Llxz;->a(ILjava/lang/String;)V

    .line 101
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 108
    :cond_4
    iget-object v0, p0, Ljwk;->e:Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 109
    const/4 v0, 0x4

    iget-object v1, p0, Ljwk;->e:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 111
    :cond_5
    iget-object v0, p0, Ljwk;->f:Ljava/lang/Integer;

    if-eqz v0, :cond_6

    .line 112
    const/4 v0, 0x5

    iget-object v1, p0, Ljwk;->f:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(II)V

    .line 114
    :cond_6
    iget-object v0, p0, Ljwk;->g:Ljava/lang/Integer;

    if-eqz v0, :cond_7

    .line 115
    const/4 v0, 0x6

    iget-object v1, p0, Ljwk;->g:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(II)V

    .line 117
    :cond_7
    iget-object v0, p0, Ljwk;->h:Ljava/lang/Integer;

    if-eqz v0, :cond_8

    .line 118
    const/4 v0, 0x7

    iget-object v1, p0, Ljwk;->h:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(II)V

    .line 120
    :cond_8
    iget-object v0, p0, Ljwk;->i:Ljava/lang/Integer;

    if-eqz v0, :cond_9

    .line 121
    const/16 v0, 0x8

    iget-object v1, p0, Ljwk;->i:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(II)V

    .line 123
    :cond_9
    iget-object v0, p0, Ljwk;->j:Ljava/lang/Integer;

    if-eqz v0, :cond_a

    .line 124
    const/16 v0, 0x9

    iget-object v1, p0, Ljwk;->j:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(II)V

    .line 126
    :cond_a
    iget-object v0, p0, Ljwk;->k:Ljava/lang/Integer;

    if-eqz v0, :cond_b

    .line 127
    const/16 v0, 0xa

    iget-object v1, p0, Ljwk;->k:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(II)V

    .line 129
    :cond_b
    iget-object v0, p0, Ljwk;->l:Ljava/lang/Integer;

    if-eqz v0, :cond_c

    .line 130
    const/16 v0, 0xb

    iget-object v1, p0, Ljwk;->l:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(II)V

    .line 132
    :cond_c
    iget-object v0, p0, Ljwk;->m:Ljava/lang/Integer;

    if-eqz v0, :cond_d

    .line 133
    const/16 v0, 0xc

    iget-object v1, p0, Ljwk;->m:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(II)V

    .line 135
    :cond_d
    iget-object v0, p0, Ljwk;->n:Ljava/lang/String;

    if-eqz v0, :cond_e

    .line 136
    const/16 v0, 0xd

    iget-object v1, p0, Ljwk;->n:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 138
    :cond_e
    iget-object v0, p0, Ljwk;->b:Ljava/lang/Integer;

    if-eqz v0, :cond_f

    .line 139
    const/16 v0, 0xe

    iget-object v1, p0, Ljwk;->b:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(II)V

    .line 141
    :cond_f
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 142
    return-void
.end method

.method protected b()I
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 146
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 147
    iget-object v2, p0, Ljwk;->a:[Ljwq;

    if-eqz v2, :cond_2

    iget-object v2, p0, Ljwk;->a:[Ljwq;

    array-length v2, v2

    if-lez v2, :cond_2

    move v2, v0

    move v0, v1

    .line 148
    :goto_0
    iget-object v3, p0, Ljwk;->a:[Ljwq;

    array-length v3, v3

    if-ge v0, v3, :cond_1

    .line 149
    iget-object v3, p0, Ljwk;->a:[Ljwq;

    aget-object v3, v3, v0

    .line 150
    if-eqz v3, :cond_0

    .line 151
    const/4 v4, 0x1

    .line 152
    invoke-static {v4, v3}, Llxz;->d(ILlyi;)I

    move-result v3

    add-int/2addr v2, v3

    .line 148
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v2

    .line 156
    :cond_2
    iget-object v2, p0, Ljwk;->c:Ljava/lang/String;

    if-eqz v2, :cond_3

    .line 157
    const/4 v2, 0x2

    iget-object v3, p0, Ljwk;->c:Ljava/lang/String;

    .line 158
    invoke-static {v2, v3}, Llxz;->b(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    .line 160
    :cond_3
    iget-object v2, p0, Ljwk;->d:[Ljava/lang/String;

    if-eqz v2, :cond_6

    iget-object v2, p0, Ljwk;->d:[Ljava/lang/String;

    array-length v2, v2

    if-lez v2, :cond_6

    move v2, v1

    move v3, v1

    .line 163
    :goto_1
    iget-object v4, p0, Ljwk;->d:[Ljava/lang/String;

    array-length v4, v4

    if-ge v1, v4, :cond_5

    .line 164
    iget-object v4, p0, Ljwk;->d:[Ljava/lang/String;

    aget-object v4, v4, v1

    .line 165
    if-eqz v4, :cond_4

    .line 166
    add-int/lit8 v3, v3, 0x1

    .line 168
    invoke-static {v4}, Llxz;->a(Ljava/lang/String;)I

    move-result v4

    add-int/2addr v2, v4

    .line 163
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 171
    :cond_5
    add-int/2addr v0, v2

    .line 172
    mul-int/lit8 v1, v3, 0x1

    add-int/2addr v0, v1

    .line 174
    :cond_6
    iget-object v1, p0, Ljwk;->e:Ljava/lang/String;

    if-eqz v1, :cond_7

    .line 175
    const/4 v1, 0x4

    iget-object v2, p0, Ljwk;->e:Ljava/lang/String;

    .line 176
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 178
    :cond_7
    iget-object v1, p0, Ljwk;->f:Ljava/lang/Integer;

    if-eqz v1, :cond_8

    .line 179
    const/4 v1, 0x5

    iget-object v2, p0, Ljwk;->f:Ljava/lang/Integer;

    .line 180
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Llxz;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 182
    :cond_8
    iget-object v1, p0, Ljwk;->g:Ljava/lang/Integer;

    if-eqz v1, :cond_9

    .line 183
    const/4 v1, 0x6

    iget-object v2, p0, Ljwk;->g:Ljava/lang/Integer;

    .line 184
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Llxz;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 186
    :cond_9
    iget-object v1, p0, Ljwk;->h:Ljava/lang/Integer;

    if-eqz v1, :cond_a

    .line 187
    const/4 v1, 0x7

    iget-object v2, p0, Ljwk;->h:Ljava/lang/Integer;

    .line 188
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Llxz;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 190
    :cond_a
    iget-object v1, p0, Ljwk;->i:Ljava/lang/Integer;

    if-eqz v1, :cond_b

    .line 191
    const/16 v1, 0x8

    iget-object v2, p0, Ljwk;->i:Ljava/lang/Integer;

    .line 192
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Llxz;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 194
    :cond_b
    iget-object v1, p0, Ljwk;->j:Ljava/lang/Integer;

    if-eqz v1, :cond_c

    .line 195
    const/16 v1, 0x9

    iget-object v2, p0, Ljwk;->j:Ljava/lang/Integer;

    .line 196
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Llxz;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 198
    :cond_c
    iget-object v1, p0, Ljwk;->k:Ljava/lang/Integer;

    if-eqz v1, :cond_d

    .line 199
    const/16 v1, 0xa

    iget-object v2, p0, Ljwk;->k:Ljava/lang/Integer;

    .line 200
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Llxz;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 202
    :cond_d
    iget-object v1, p0, Ljwk;->l:Ljava/lang/Integer;

    if-eqz v1, :cond_e

    .line 203
    const/16 v1, 0xb

    iget-object v2, p0, Ljwk;->l:Ljava/lang/Integer;

    .line 204
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Llxz;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 206
    :cond_e
    iget-object v1, p0, Ljwk;->m:Ljava/lang/Integer;

    if-eqz v1, :cond_f

    .line 207
    const/16 v1, 0xc

    iget-object v2, p0, Ljwk;->m:Ljava/lang/Integer;

    .line 208
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Llxz;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 210
    :cond_f
    iget-object v1, p0, Ljwk;->n:Ljava/lang/String;

    if-eqz v1, :cond_10

    .line 211
    const/16 v1, 0xd

    iget-object v2, p0, Ljwk;->n:Ljava/lang/String;

    .line 212
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 214
    :cond_10
    iget-object v1, p0, Ljwk;->b:Ljava/lang/Integer;

    if-eqz v1, :cond_11

    .line 215
    const/16 v1, 0xe

    iget-object v2, p0, Ljwk;->b:Ljava/lang/Integer;

    .line 216
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Llxz;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 218
    :cond_11
    return v0
.end method
