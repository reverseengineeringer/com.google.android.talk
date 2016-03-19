.class public final Lmax;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Lmax;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Llyc;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Llyc",
            "<",
            "Llyt;",
            "Lmax;",
            ">;"
        }
    .end annotation
.end field

.field public static final b:Llyc;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Llyc",
            "<",
            "Lmsu;",
            "Lmax;",
            ">;"
        }
    .end annotation
.end field

.field private static final q:[Lmax;


# instance fields
.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public g:Ljava/lang/String;

.field public h:Llzf;

.field public i:Ljava/lang/String;

.field public j:[Llyt;

.field public k:Llyt;

.field public l:[Llyt;

.field public m:Ljava/lang/String;

.field public n:Ljava/lang/String;

.field public o:Llyt;

.field public p:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const-wide/32 v2, 0x12f42aba

    .line 17
    const-class v0, Lmax;

    .line 18
    invoke-static {v0, v2, v3}, Llyc;->a(Ljava/lang/Class;J)Llyc;

    move-result-object v0

    sput-object v0, Lmax;->a:Llyc;

    .line 27
    const-class v0, Lmax;

    .line 28
    invoke-static {v0, v2, v3}, Llyc;->a(Ljava/lang/Class;J)Llyc;

    move-result-object v0

    sput-object v0, Lmax;->b:Llyc;

    .line 33
    const/4 v0, 0x0

    new-array v0, v0, [Lmax;

    sput-object v0, Lmax;->q:[Lmax;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 82
    invoke-direct {p0}, Llyb;-><init>()V

    .line 1087
    iput-object v1, p0, Lmax;->c:Ljava/lang/String;

    .line 1088
    iput-object v1, p0, Lmax;->d:Ljava/lang/String;

    .line 1089
    iput-object v1, p0, Lmax;->e:Ljava/lang/String;

    .line 1090
    iput-object v1, p0, Lmax;->f:Ljava/lang/String;

    .line 1091
    iput-object v1, p0, Lmax;->g:Ljava/lang/String;

    .line 1092
    iput-object v1, p0, Lmax;->h:Llzf;

    .line 1093
    iput-object v1, p0, Lmax;->i:Ljava/lang/String;

    .line 1094
    invoke-static {}, Llyt;->d()[Llyt;

    move-result-object v0

    iput-object v0, p0, Lmax;->j:[Llyt;

    .line 1095
    iput-object v1, p0, Lmax;->k:Llyt;

    .line 1096
    invoke-static {}, Llyt;->d()[Llyt;

    move-result-object v0

    iput-object v0, p0, Lmax;->l:[Llyt;

    .line 1097
    iput-object v1, p0, Lmax;->m:Ljava/lang/String;

    .line 1098
    iput-object v1, p0, Lmax;->n:Ljava/lang/String;

    .line 1099
    iput-object v1, p0, Lmax;->o:Llyt;

    .line 1100
    iput-object v1, p0, Lmax;->p:Ljava/lang/String;

    .line 1101
    iput-object v1, p0, Lmax;->eD:Llyd;

    .line 1102
    const/4 v0, -0x1

    iput v0, p0, Lmax;->eE:I

    .line 84
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 4

    .prologue
    const/4 v1, 0x0

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

    iput-object v0, p0, Lmax;->c:Ljava/lang/String;

    goto :goto_0

    .line 1256
    :sswitch_2
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmax;->d:Ljava/lang/String;

    goto :goto_0

    .line 1260
    :sswitch_3
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmax;->e:Ljava/lang/String;

    goto :goto_0

    .line 1264
    :sswitch_4
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmax;->f:Ljava/lang/String;

    goto :goto_0

    .line 1268
    :sswitch_5
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmax;->g:Ljava/lang/String;

    goto :goto_0

    .line 1272
    :sswitch_6
    iget-object v0, p0, Lmax;->h:Llzf;

    if-nez v0, :cond_1

    .line 1273
    new-instance v0, Llzf;

    invoke-direct {v0}, Llzf;-><init>()V

    iput-object v0, p0, Lmax;->h:Llzf;

    .line 1275
    :cond_1
    iget-object v0, p0, Lmax;->h:Llzf;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 1279
    :sswitch_7
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmax;->i:Ljava/lang/String;

    goto :goto_0

    .line 1283
    :sswitch_8
    const/16 v0, 0x42

    .line 1284
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v2

    .line 1285
    iget-object v0, p0, Lmax;->j:[Llyt;

    if-nez v0, :cond_3

    move v0, v1

    .line 1286
    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Llyt;

    .line 1288
    if-eqz v0, :cond_2

    .line 1289
    iget-object v3, p0, Lmax;->j:[Llyt;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1291
    :cond_2
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_4

    .line 1292
    new-instance v3, Llyt;

    invoke-direct {v3}, Llyt;-><init>()V

    aput-object v3, v2, v0

    .line 1293
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Llxy;->a(Llyi;)V

    .line 1294
    invoke-virtual {p1}, Llxy;->a()I

    .line 1291
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1285
    :cond_3
    iget-object v0, p0, Lmax;->j:[Llyt;

    array-length v0, v0

    goto :goto_1

    .line 1297
    :cond_4
    new-instance v3, Llyt;

    invoke-direct {v3}, Llyt;-><init>()V

    aput-object v3, v2, v0

    .line 1298
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    .line 1299
    iput-object v2, p0, Lmax;->j:[Llyt;

    goto/16 :goto_0

    .line 1303
    :sswitch_9
    iget-object v0, p0, Lmax;->k:Llyt;

    if-nez v0, :cond_5

    .line 1304
    new-instance v0, Llyt;

    invoke-direct {v0}, Llyt;-><init>()V

    iput-object v0, p0, Lmax;->k:Llyt;

    .line 1306
    :cond_5
    iget-object v0, p0, Lmax;->k:Llyt;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto/16 :goto_0

    .line 1310
    :sswitch_a
    const/16 v0, 0x5a

    .line 1311
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v2

    .line 1312
    iget-object v0, p0, Lmax;->l:[Llyt;

    if-nez v0, :cond_7

    move v0, v1

    .line 1313
    :goto_3
    add-int/2addr v2, v0

    new-array v2, v2, [Llyt;

    .line 1315
    if-eqz v0, :cond_6

    .line 1316
    iget-object v3, p0, Lmax;->l:[Llyt;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1318
    :cond_6
    :goto_4
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_8

    .line 1319
    new-instance v3, Llyt;

    invoke-direct {v3}, Llyt;-><init>()V

    aput-object v3, v2, v0

    .line 1320
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Llxy;->a(Llyi;)V

    .line 1321
    invoke-virtual {p1}, Llxy;->a()I

    .line 1318
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 1312
    :cond_7
    iget-object v0, p0, Lmax;->l:[Llyt;

    array-length v0, v0

    goto :goto_3

    .line 1324
    :cond_8
    new-instance v3, Llyt;

    invoke-direct {v3}, Llyt;-><init>()V

    aput-object v3, v2, v0

    .line 1325
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    .line 1326
    iput-object v2, p0, Lmax;->l:[Llyt;

    goto/16 :goto_0

    .line 1330
    :sswitch_b
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmax;->m:Ljava/lang/String;

    goto/16 :goto_0

    .line 1334
    :sswitch_c
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmax;->n:Ljava/lang/String;

    goto/16 :goto_0

    .line 1338
    :sswitch_d
    iget-object v0, p0, Lmax;->o:Llyt;

    if-nez v0, :cond_9

    .line 1339
    new-instance v0, Llyt;

    invoke-direct {v0}, Llyt;-><init>()V

    iput-object v0, p0, Lmax;->o:Llyt;

    .line 1341
    :cond_9
    iget-object v0, p0, Lmax;->o:Llyt;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto/16 :goto_0

    .line 1345
    :sswitch_e
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmax;->p:Ljava/lang/String;

    goto/16 :goto_0

    .line 1242
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
        0x2a -> :sswitch_5
        0x32 -> :sswitch_6
        0x3a -> :sswitch_7
        0x42 -> :sswitch_8
        0x4a -> :sswitch_9
        0x5a -> :sswitch_a
        0x62 -> :sswitch_b
        0x25a -> :sswitch_c
        0x5ca -> :sswitch_d
        0x7f2 -> :sswitch_e
    .end sparse-switch
.end method

.method public a(Llxz;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 109
    iget-object v0, p0, Lmax;->c:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 110
    const/4 v0, 0x1

    iget-object v2, p0, Lmax;->c:Ljava/lang/String;

    invoke-virtual {p1, v0, v2}, Llxz;->a(ILjava/lang/String;)V

    .line 112
    :cond_0
    iget-object v0, p0, Lmax;->d:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 113
    const/4 v0, 0x2

    iget-object v2, p0, Lmax;->d:Ljava/lang/String;

    invoke-virtual {p1, v0, v2}, Llxz;->a(ILjava/lang/String;)V

    .line 115
    :cond_1
    iget-object v0, p0, Lmax;->e:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 116
    const/4 v0, 0x3

    iget-object v2, p0, Lmax;->e:Ljava/lang/String;

    invoke-virtual {p1, v0, v2}, Llxz;->a(ILjava/lang/String;)V

    .line 118
    :cond_2
    iget-object v0, p0, Lmax;->f:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 119
    const/4 v0, 0x4

    iget-object v2, p0, Lmax;->f:Ljava/lang/String;

    invoke-virtual {p1, v0, v2}, Llxz;->a(ILjava/lang/String;)V

    .line 121
    :cond_3
    iget-object v0, p0, Lmax;->g:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 122
    const/4 v0, 0x5

    iget-object v2, p0, Lmax;->g:Ljava/lang/String;

    invoke-virtual {p1, v0, v2}, Llxz;->a(ILjava/lang/String;)V

    .line 124
    :cond_4
    iget-object v0, p0, Lmax;->h:Llzf;

    if-eqz v0, :cond_5

    .line 125
    const/4 v0, 0x6

    iget-object v2, p0, Lmax;->h:Llzf;

    invoke-virtual {p1, v0, v2}, Llxz;->b(ILlyi;)V

    .line 127
    :cond_5
    iget-object v0, p0, Lmax;->i:Ljava/lang/String;

    if-eqz v0, :cond_6

    .line 128
    const/4 v0, 0x7

    iget-object v2, p0, Lmax;->i:Ljava/lang/String;

    invoke-virtual {p1, v0, v2}, Llxz;->a(ILjava/lang/String;)V

    .line 130
    :cond_6
    iget-object v0, p0, Lmax;->j:[Llyt;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lmax;->j:[Llyt;

    array-length v0, v0

    if-lez v0, :cond_8

    move v0, v1

    .line 131
    :goto_0
    iget-object v2, p0, Lmax;->j:[Llyt;

    array-length v2, v2

    if-ge v0, v2, :cond_8

    .line 132
    iget-object v2, p0, Lmax;->j:[Llyt;

    aget-object v2, v2, v0

    .line 133
    if-eqz v2, :cond_7

    .line 134
    const/16 v3, 0x8

    invoke-virtual {p1, v3, v2}, Llxz;->b(ILlyi;)V

    .line 131
    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 138
    :cond_8
    iget-object v0, p0, Lmax;->k:Llyt;

    if-eqz v0, :cond_9

    .line 139
    const/16 v0, 0x9

    iget-object v2, p0, Lmax;->k:Llyt;

    invoke-virtual {p1, v0, v2}, Llxz;->b(ILlyi;)V

    .line 141
    :cond_9
    iget-object v0, p0, Lmax;->l:[Llyt;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lmax;->l:[Llyt;

    array-length v0, v0

    if-lez v0, :cond_b

    .line 142
    :goto_1
    iget-object v0, p0, Lmax;->l:[Llyt;

    array-length v0, v0

    if-ge v1, v0, :cond_b

    .line 143
    iget-object v0, p0, Lmax;->l:[Llyt;

    aget-object v0, v0, v1

    .line 144
    if-eqz v0, :cond_a

    .line 145
    const/16 v2, 0xb

    invoke-virtual {p1, v2, v0}, Llxz;->b(ILlyi;)V

    .line 142
    :cond_a
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 149
    :cond_b
    iget-object v0, p0, Lmax;->m:Ljava/lang/String;

    if-eqz v0, :cond_c

    .line 150
    const/16 v0, 0xc

    iget-object v1, p0, Lmax;->m:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 152
    :cond_c
    iget-object v0, p0, Lmax;->n:Ljava/lang/String;

    if-eqz v0, :cond_d

    .line 153
    const/16 v0, 0x4b

    iget-object v1, p0, Lmax;->n:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 155
    :cond_d
    iget-object v0, p0, Lmax;->o:Llyt;

    if-eqz v0, :cond_e

    .line 156
    const/16 v0, 0xb9

    iget-object v1, p0, Lmax;->o:Llyt;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 158
    :cond_e
    iget-object v0, p0, Lmax;->p:Ljava/lang/String;

    if-eqz v0, :cond_f

    .line 159
    const/16 v0, 0xfe

    iget-object v1, p0, Lmax;->p:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 161
    :cond_f
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 162
    return-void
.end method

.method protected b()I
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 166
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 167
    iget-object v2, p0, Lmax;->c:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 168
    const/4 v2, 0x1

    iget-object v3, p0, Lmax;->c:Ljava/lang/String;

    .line 169
    invoke-static {v2, v3}, Llxz;->b(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    .line 171
    :cond_0
    iget-object v2, p0, Lmax;->d:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 172
    const/4 v2, 0x2

    iget-object v3, p0, Lmax;->d:Ljava/lang/String;

    .line 173
    invoke-static {v2, v3}, Llxz;->b(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    .line 175
    :cond_1
    iget-object v2, p0, Lmax;->e:Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 176
    const/4 v2, 0x3

    iget-object v3, p0, Lmax;->e:Ljava/lang/String;

    .line 177
    invoke-static {v2, v3}, Llxz;->b(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    .line 179
    :cond_2
    iget-object v2, p0, Lmax;->f:Ljava/lang/String;

    if-eqz v2, :cond_3

    .line 180
    const/4 v2, 0x4

    iget-object v3, p0, Lmax;->f:Ljava/lang/String;

    .line 181
    invoke-static {v2, v3}, Llxz;->b(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    .line 183
    :cond_3
    iget-object v2, p0, Lmax;->g:Ljava/lang/String;

    if-eqz v2, :cond_4

    .line 184
    const/4 v2, 0x5

    iget-object v3, p0, Lmax;->g:Ljava/lang/String;

    .line 185
    invoke-static {v2, v3}, Llxz;->b(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    .line 187
    :cond_4
    iget-object v2, p0, Lmax;->h:Llzf;

    if-eqz v2, :cond_5

    .line 188
    const/4 v2, 0x6

    iget-object v3, p0, Lmax;->h:Llzf;

    .line 189
    invoke-static {v2, v3}, Llxz;->d(ILlyi;)I

    move-result v2

    add-int/2addr v0, v2

    .line 191
    :cond_5
    iget-object v2, p0, Lmax;->i:Ljava/lang/String;

    if-eqz v2, :cond_6

    .line 192
    const/4 v2, 0x7

    iget-object v3, p0, Lmax;->i:Ljava/lang/String;

    .line 193
    invoke-static {v2, v3}, Llxz;->b(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    .line 195
    :cond_6
    iget-object v2, p0, Lmax;->j:[Llyt;

    if-eqz v2, :cond_9

    iget-object v2, p0, Lmax;->j:[Llyt;

    array-length v2, v2

    if-lez v2, :cond_9

    move v2, v0

    move v0, v1

    .line 196
    :goto_0
    iget-object v3, p0, Lmax;->j:[Llyt;

    array-length v3, v3

    if-ge v0, v3, :cond_8

    .line 197
    iget-object v3, p0, Lmax;->j:[Llyt;

    aget-object v3, v3, v0

    .line 198
    if-eqz v3, :cond_7

    .line 199
    const/16 v4, 0x8

    .line 200
    invoke-static {v4, v3}, Llxz;->d(ILlyi;)I

    move-result v3

    add-int/2addr v2, v3

    .line 196
    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_8
    move v0, v2

    .line 204
    :cond_9
    iget-object v2, p0, Lmax;->k:Llyt;

    if-eqz v2, :cond_a

    .line 205
    const/16 v2, 0x9

    iget-object v3, p0, Lmax;->k:Llyt;

    .line 206
    invoke-static {v2, v3}, Llxz;->d(ILlyi;)I

    move-result v2

    add-int/2addr v0, v2

    .line 208
    :cond_a
    iget-object v2, p0, Lmax;->l:[Llyt;

    if-eqz v2, :cond_c

    iget-object v2, p0, Lmax;->l:[Llyt;

    array-length v2, v2

    if-lez v2, :cond_c

    .line 209
    :goto_1
    iget-object v2, p0, Lmax;->l:[Llyt;

    array-length v2, v2

    if-ge v1, v2, :cond_c

    .line 210
    iget-object v2, p0, Lmax;->l:[Llyt;

    aget-object v2, v2, v1

    .line 211
    if-eqz v2, :cond_b

    .line 212
    const/16 v3, 0xb

    .line 213
    invoke-static {v3, v2}, Llxz;->d(ILlyi;)I

    move-result v2

    add-int/2addr v0, v2

    .line 209
    :cond_b
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 217
    :cond_c
    iget-object v1, p0, Lmax;->m:Ljava/lang/String;

    if-eqz v1, :cond_d

    .line 218
    const/16 v1, 0xc

    iget-object v2, p0, Lmax;->m:Ljava/lang/String;

    .line 219
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 221
    :cond_d
    iget-object v1, p0, Lmax;->n:Ljava/lang/String;

    if-eqz v1, :cond_e

    .line 222
    const/16 v1, 0x4b

    iget-object v2, p0, Lmax;->n:Ljava/lang/String;

    .line 223
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 225
    :cond_e
    iget-object v1, p0, Lmax;->o:Llyt;

    if-eqz v1, :cond_f

    .line 226
    const/16 v1, 0xb9

    iget-object v2, p0, Lmax;->o:Llyt;

    .line 227
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 229
    :cond_f
    iget-object v1, p0, Lmax;->p:Ljava/lang/String;

    if-eqz v1, :cond_10

    .line 230
    const/16 v1, 0xfe

    iget-object v2, p0, Lmax;->p:Ljava/lang/String;

    .line 231
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 233
    :cond_10
    return v0
.end method
