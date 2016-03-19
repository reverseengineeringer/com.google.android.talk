.class public final Llzi;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Llzi;",
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
            "Llzi;",
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
            "Llzi;",
            ">;"
        }
    .end annotation
.end field

.field private static final s:[Llzi;


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

.field public n:Ljava/lang/Double;

.field public o:Ljava/lang/Double;

.field public p:Ljava/lang/String;

.field public q:Llyt;

.field public r:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const-wide/32 v2, 0x1184776a

    .line 17
    const-class v0, Llzi;

    .line 18
    invoke-static {v0, v2, v3}, Llyc;->a(Ljava/lang/Class;J)Llyc;

    move-result-object v0

    sput-object v0, Llzi;->a:Llyc;

    .line 27
    const-class v0, Llzi;

    .line 28
    invoke-static {v0, v2, v3}, Llyc;->a(Ljava/lang/Class;J)Llyc;

    move-result-object v0

    sput-object v0, Llzi;->b:Llyc;

    .line 33
    const/4 v0, 0x0

    new-array v0, v0, [Llzi;

    sput-object v0, Llzi;->s:[Llzi;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 88
    invoke-direct {p0}, Llyb;-><init>()V

    .line 1093
    iput-object v1, p0, Llzi;->c:Ljava/lang/String;

    .line 1094
    iput-object v1, p0, Llzi;->d:Ljava/lang/String;

    .line 1095
    iput-object v1, p0, Llzi;->e:Ljava/lang/String;

    .line 1096
    iput-object v1, p0, Llzi;->f:Ljava/lang/String;

    .line 1097
    iput-object v1, p0, Llzi;->g:Ljava/lang/String;

    .line 1098
    iput-object v1, p0, Llzi;->h:Llzf;

    .line 1099
    iput-object v1, p0, Llzi;->i:Ljava/lang/String;

    .line 1100
    invoke-static {}, Llyt;->d()[Llyt;

    move-result-object v0

    iput-object v0, p0, Llzi;->j:[Llyt;

    .line 1101
    iput-object v1, p0, Llzi;->k:Llyt;

    .line 1102
    invoke-static {}, Llyt;->d()[Llyt;

    move-result-object v0

    iput-object v0, p0, Llzi;->l:[Llyt;

    .line 1103
    iput-object v1, p0, Llzi;->m:Ljava/lang/String;

    .line 1104
    iput-object v1, p0, Llzi;->n:Ljava/lang/Double;

    .line 1105
    iput-object v1, p0, Llzi;->o:Ljava/lang/Double;

    .line 1106
    iput-object v1, p0, Llzi;->p:Ljava/lang/String;

    .line 1107
    iput-object v1, p0, Llzi;->q:Llyt;

    .line 1108
    iput-object v1, p0, Llzi;->r:Ljava/lang/String;

    .line 1109
    iput-object v1, p0, Llzi;->eD:Llyd;

    .line 1110
    const/4 v0, -0x1

    iput v0, p0, Llzi;->eE:I

    .line 90
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 3263
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 3264
    sparse-switch v0, :sswitch_data_0

    .line 3268
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3269
    :sswitch_0
    return-object p0

    .line 3274
    :sswitch_1
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Llzi;->c:Ljava/lang/String;

    goto :goto_0

    .line 3278
    :sswitch_2
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Llzi;->d:Ljava/lang/String;

    goto :goto_0

    .line 3282
    :sswitch_3
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Llzi;->e:Ljava/lang/String;

    goto :goto_0

    .line 3286
    :sswitch_4
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Llzi;->f:Ljava/lang/String;

    goto :goto_0

    .line 3290
    :sswitch_5
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Llzi;->g:Ljava/lang/String;

    goto :goto_0

    .line 3294
    :sswitch_6
    iget-object v0, p0, Llzi;->h:Llzf;

    if-nez v0, :cond_1

    .line 3295
    new-instance v0, Llzf;

    invoke-direct {v0}, Llzf;-><init>()V

    iput-object v0, p0, Llzi;->h:Llzf;

    .line 3297
    :cond_1
    iget-object v0, p0, Llzi;->h:Llzf;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 3301
    :sswitch_7
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Llzi;->i:Ljava/lang/String;

    goto :goto_0

    .line 3305
    :sswitch_8
    const/16 v0, 0x42

    .line 3306
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v2

    .line 3307
    iget-object v0, p0, Llzi;->j:[Llyt;

    if-nez v0, :cond_3

    move v0, v1

    .line 3308
    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Llyt;

    .line 3310
    if-eqz v0, :cond_2

    .line 3311
    iget-object v3, p0, Llzi;->j:[Llyt;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3313
    :cond_2
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_4

    .line 3314
    new-instance v3, Llyt;

    invoke-direct {v3}, Llyt;-><init>()V

    aput-object v3, v2, v0

    .line 3315
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Llxy;->a(Llyi;)V

    .line 3316
    invoke-virtual {p1}, Llxy;->a()I

    .line 3313
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 3307
    :cond_3
    iget-object v0, p0, Llzi;->j:[Llyt;

    array-length v0, v0

    goto :goto_1

    .line 3319
    :cond_4
    new-instance v3, Llyt;

    invoke-direct {v3}, Llyt;-><init>()V

    aput-object v3, v2, v0

    .line 3320
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    .line 3321
    iput-object v2, p0, Llzi;->j:[Llyt;

    goto/16 :goto_0

    .line 3325
    :sswitch_9
    iget-object v0, p0, Llzi;->k:Llyt;

    if-nez v0, :cond_5

    .line 3326
    new-instance v0, Llyt;

    invoke-direct {v0}, Llyt;-><init>()V

    iput-object v0, p0, Llzi;->k:Llyt;

    .line 3328
    :cond_5
    iget-object v0, p0, Llzi;->k:Llyt;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto/16 :goto_0

    .line 3332
    :sswitch_a
    const/16 v0, 0x5a

    .line 3333
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v2

    .line 3334
    iget-object v0, p0, Llzi;->l:[Llyt;

    if-nez v0, :cond_7

    move v0, v1

    .line 3335
    :goto_3
    add-int/2addr v2, v0

    new-array v2, v2, [Llyt;

    .line 3337
    if-eqz v0, :cond_6

    .line 3338
    iget-object v3, p0, Llzi;->l:[Llyt;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3340
    :cond_6
    :goto_4
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_8

    .line 3341
    new-instance v3, Llyt;

    invoke-direct {v3}, Llyt;-><init>()V

    aput-object v3, v2, v0

    .line 3342
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Llxy;->a(Llyi;)V

    .line 3343
    invoke-virtual {p1}, Llxy;->a()I

    .line 3340
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 3334
    :cond_7
    iget-object v0, p0, Llzi;->l:[Llyt;

    array-length v0, v0

    goto :goto_3

    .line 3346
    :cond_8
    new-instance v3, Llyt;

    invoke-direct {v3}, Llyt;-><init>()V

    aput-object v3, v2, v0

    .line 3347
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    .line 3348
    iput-object v2, p0, Llzi;->l:[Llyt;

    goto/16 :goto_0

    .line 3352
    :sswitch_b
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Llzi;->m:Ljava/lang/String;

    goto/16 :goto_0

    .line 3356
    :sswitch_c
    invoke-virtual {p1}, Llxy;->b()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Llzi;->n:Ljava/lang/Double;

    goto/16 :goto_0

    .line 3360
    :sswitch_d
    invoke-virtual {p1}, Llxy;->b()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Llzi;->o:Ljava/lang/Double;

    goto/16 :goto_0

    .line 3364
    :sswitch_e
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Llzi;->p:Ljava/lang/String;

    goto/16 :goto_0

    .line 3368
    :sswitch_f
    iget-object v0, p0, Llzi;->q:Llyt;

    if-nez v0, :cond_9

    .line 3369
    new-instance v0, Llyt;

    invoke-direct {v0}, Llyt;-><init>()V

    iput-object v0, p0, Llzi;->q:Llyt;

    .line 3371
    :cond_9
    iget-object v0, p0, Llzi;->q:Llyt;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto/16 :goto_0

    .line 3375
    :sswitch_10
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Llzi;->r:Ljava/lang/String;

    goto/16 :goto_0

    .line 3264
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
        0x121 -> :sswitch_c
        0x129 -> :sswitch_d
        0x25a -> :sswitch_e
        0x5ca -> :sswitch_f
        0x7f2 -> :sswitch_10
    .end sparse-switch
.end method

.method public a(Llxz;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 117
    iget-object v0, p0, Llzi;->c:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 118
    const/4 v0, 0x1

    iget-object v2, p0, Llzi;->c:Ljava/lang/String;

    invoke-virtual {p1, v0, v2}, Llxz;->a(ILjava/lang/String;)V

    .line 120
    :cond_0
    iget-object v0, p0, Llzi;->d:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 121
    const/4 v0, 0x2

    iget-object v2, p0, Llzi;->d:Ljava/lang/String;

    invoke-virtual {p1, v0, v2}, Llxz;->a(ILjava/lang/String;)V

    .line 123
    :cond_1
    iget-object v0, p0, Llzi;->e:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 124
    const/4 v0, 0x3

    iget-object v2, p0, Llzi;->e:Ljava/lang/String;

    invoke-virtual {p1, v0, v2}, Llxz;->a(ILjava/lang/String;)V

    .line 126
    :cond_2
    iget-object v0, p0, Llzi;->f:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 127
    const/4 v0, 0x4

    iget-object v2, p0, Llzi;->f:Ljava/lang/String;

    invoke-virtual {p1, v0, v2}, Llxz;->a(ILjava/lang/String;)V

    .line 129
    :cond_3
    iget-object v0, p0, Llzi;->g:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 130
    const/4 v0, 0x5

    iget-object v2, p0, Llzi;->g:Ljava/lang/String;

    invoke-virtual {p1, v0, v2}, Llxz;->a(ILjava/lang/String;)V

    .line 132
    :cond_4
    iget-object v0, p0, Llzi;->h:Llzf;

    if-eqz v0, :cond_5

    .line 133
    const/4 v0, 0x6

    iget-object v2, p0, Llzi;->h:Llzf;

    invoke-virtual {p1, v0, v2}, Llxz;->b(ILlyi;)V

    .line 135
    :cond_5
    iget-object v0, p0, Llzi;->i:Ljava/lang/String;

    if-eqz v0, :cond_6

    .line 136
    const/4 v0, 0x7

    iget-object v2, p0, Llzi;->i:Ljava/lang/String;

    invoke-virtual {p1, v0, v2}, Llxz;->a(ILjava/lang/String;)V

    .line 138
    :cond_6
    iget-object v0, p0, Llzi;->j:[Llyt;

    if-eqz v0, :cond_8

    iget-object v0, p0, Llzi;->j:[Llyt;

    array-length v0, v0

    if-lez v0, :cond_8

    move v0, v1

    .line 139
    :goto_0
    iget-object v2, p0, Llzi;->j:[Llyt;

    array-length v2, v2

    if-ge v0, v2, :cond_8

    .line 140
    iget-object v2, p0, Llzi;->j:[Llyt;

    aget-object v2, v2, v0

    .line 141
    if-eqz v2, :cond_7

    .line 142
    const/16 v3, 0x8

    invoke-virtual {p1, v3, v2}, Llxz;->b(ILlyi;)V

    .line 139
    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 146
    :cond_8
    iget-object v0, p0, Llzi;->k:Llyt;

    if-eqz v0, :cond_9

    .line 147
    const/16 v0, 0x9

    iget-object v2, p0, Llzi;->k:Llyt;

    invoke-virtual {p1, v0, v2}, Llxz;->b(ILlyi;)V

    .line 149
    :cond_9
    iget-object v0, p0, Llzi;->l:[Llyt;

    if-eqz v0, :cond_b

    iget-object v0, p0, Llzi;->l:[Llyt;

    array-length v0, v0

    if-lez v0, :cond_b

    .line 150
    :goto_1
    iget-object v0, p0, Llzi;->l:[Llyt;

    array-length v0, v0

    if-ge v1, v0, :cond_b

    .line 151
    iget-object v0, p0, Llzi;->l:[Llyt;

    aget-object v0, v0, v1

    .line 152
    if-eqz v0, :cond_a

    .line 153
    const/16 v2, 0xb

    invoke-virtual {p1, v2, v0}, Llxz;->b(ILlyi;)V

    .line 150
    :cond_a
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 157
    :cond_b
    iget-object v0, p0, Llzi;->m:Ljava/lang/String;

    if-eqz v0, :cond_c

    .line 158
    const/16 v0, 0xc

    iget-object v1, p0, Llzi;->m:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 160
    :cond_c
    iget-object v0, p0, Llzi;->n:Ljava/lang/Double;

    if-eqz v0, :cond_d

    .line 161
    const/16 v0, 0x24

    iget-object v1, p0, Llzi;->n:Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Llxz;->a(ID)V

    .line 163
    :cond_d
    iget-object v0, p0, Llzi;->o:Ljava/lang/Double;

    if-eqz v0, :cond_e

    .line 164
    const/16 v0, 0x25

    iget-object v1, p0, Llzi;->o:Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Llxz;->a(ID)V

    .line 166
    :cond_e
    iget-object v0, p0, Llzi;->p:Ljava/lang/String;

    if-eqz v0, :cond_f

    .line 167
    const/16 v0, 0x4b

    iget-object v1, p0, Llzi;->p:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 169
    :cond_f
    iget-object v0, p0, Llzi;->q:Llyt;

    if-eqz v0, :cond_10

    .line 170
    const/16 v0, 0xb9

    iget-object v1, p0, Llzi;->q:Llyt;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 172
    :cond_10
    iget-object v0, p0, Llzi;->r:Ljava/lang/String;

    if-eqz v0, :cond_11

    .line 173
    const/16 v0, 0xfe

    iget-object v1, p0, Llzi;->r:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 175
    :cond_11
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 176
    return-void
.end method

.method protected b()I
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 180
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 181
    iget-object v2, p0, Llzi;->c:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 182
    const/4 v2, 0x1

    iget-object v3, p0, Llzi;->c:Ljava/lang/String;

    .line 183
    invoke-static {v2, v3}, Llxz;->b(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    .line 185
    :cond_0
    iget-object v2, p0, Llzi;->d:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 186
    const/4 v2, 0x2

    iget-object v3, p0, Llzi;->d:Ljava/lang/String;

    .line 187
    invoke-static {v2, v3}, Llxz;->b(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    .line 189
    :cond_1
    iget-object v2, p0, Llzi;->e:Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 190
    const/4 v2, 0x3

    iget-object v3, p0, Llzi;->e:Ljava/lang/String;

    .line 191
    invoke-static {v2, v3}, Llxz;->b(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    .line 193
    :cond_2
    iget-object v2, p0, Llzi;->f:Ljava/lang/String;

    if-eqz v2, :cond_3

    .line 194
    const/4 v2, 0x4

    iget-object v3, p0, Llzi;->f:Ljava/lang/String;

    .line 195
    invoke-static {v2, v3}, Llxz;->b(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    .line 197
    :cond_3
    iget-object v2, p0, Llzi;->g:Ljava/lang/String;

    if-eqz v2, :cond_4

    .line 198
    const/4 v2, 0x5

    iget-object v3, p0, Llzi;->g:Ljava/lang/String;

    .line 199
    invoke-static {v2, v3}, Llxz;->b(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    .line 201
    :cond_4
    iget-object v2, p0, Llzi;->h:Llzf;

    if-eqz v2, :cond_5

    .line 202
    const/4 v2, 0x6

    iget-object v3, p0, Llzi;->h:Llzf;

    .line 203
    invoke-static {v2, v3}, Llxz;->d(ILlyi;)I

    move-result v2

    add-int/2addr v0, v2

    .line 205
    :cond_5
    iget-object v2, p0, Llzi;->i:Ljava/lang/String;

    if-eqz v2, :cond_6

    .line 206
    const/4 v2, 0x7

    iget-object v3, p0, Llzi;->i:Ljava/lang/String;

    .line 207
    invoke-static {v2, v3}, Llxz;->b(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    .line 209
    :cond_6
    iget-object v2, p0, Llzi;->j:[Llyt;

    if-eqz v2, :cond_9

    iget-object v2, p0, Llzi;->j:[Llyt;

    array-length v2, v2

    if-lez v2, :cond_9

    move v2, v0

    move v0, v1

    .line 210
    :goto_0
    iget-object v3, p0, Llzi;->j:[Llyt;

    array-length v3, v3

    if-ge v0, v3, :cond_8

    .line 211
    iget-object v3, p0, Llzi;->j:[Llyt;

    aget-object v3, v3, v0

    .line 212
    if-eqz v3, :cond_7

    .line 213
    const/16 v4, 0x8

    .line 214
    invoke-static {v4, v3}, Llxz;->d(ILlyi;)I

    move-result v3

    add-int/2addr v2, v3

    .line 210
    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_8
    move v0, v2

    .line 218
    :cond_9
    iget-object v2, p0, Llzi;->k:Llyt;

    if-eqz v2, :cond_a

    .line 219
    const/16 v2, 0x9

    iget-object v3, p0, Llzi;->k:Llyt;

    .line 220
    invoke-static {v2, v3}, Llxz;->d(ILlyi;)I

    move-result v2

    add-int/2addr v0, v2

    .line 222
    :cond_a
    iget-object v2, p0, Llzi;->l:[Llyt;

    if-eqz v2, :cond_c

    iget-object v2, p0, Llzi;->l:[Llyt;

    array-length v2, v2

    if-lez v2, :cond_c

    .line 223
    :goto_1
    iget-object v2, p0, Llzi;->l:[Llyt;

    array-length v2, v2

    if-ge v1, v2, :cond_c

    .line 224
    iget-object v2, p0, Llzi;->l:[Llyt;

    aget-object v2, v2, v1

    .line 225
    if-eqz v2, :cond_b

    .line 226
    const/16 v3, 0xb

    .line 227
    invoke-static {v3, v2}, Llxz;->d(ILlyi;)I

    move-result v2

    add-int/2addr v0, v2

    .line 223
    :cond_b
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 231
    :cond_c
    iget-object v1, p0, Llzi;->m:Ljava/lang/String;

    if-eqz v1, :cond_d

    .line 232
    const/16 v1, 0xc

    iget-object v2, p0, Llzi;->m:Ljava/lang/String;

    .line 233
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 235
    :cond_d
    iget-object v1, p0, Llzi;->n:Ljava/lang/Double;

    if-eqz v1, :cond_e

    .line 236
    const/16 v1, 0x24

    iget-object v2, p0, Llzi;->n:Ljava/lang/Double;

    .line 237
    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    .line 1561
    invoke-static {v1}, Llxz;->f(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x8

    .line 237
    add-int/2addr v0, v1

    .line 239
    :cond_e
    iget-object v1, p0, Llzi;->o:Ljava/lang/Double;

    if-eqz v1, :cond_f

    .line 240
    const/16 v1, 0x25

    iget-object v2, p0, Llzi;->o:Ljava/lang/Double;

    .line 241
    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    .line 2561
    invoke-static {v1}, Llxz;->f(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x8

    .line 241
    add-int/2addr v0, v1

    .line 243
    :cond_f
    iget-object v1, p0, Llzi;->p:Ljava/lang/String;

    if-eqz v1, :cond_10

    .line 244
    const/16 v1, 0x4b

    iget-object v2, p0, Llzi;->p:Ljava/lang/String;

    .line 245
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 247
    :cond_10
    iget-object v1, p0, Llzi;->q:Llyt;

    if-eqz v1, :cond_11

    .line 248
    const/16 v1, 0xb9

    iget-object v2, p0, Llzi;->q:Llyt;

    .line 249
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 251
    :cond_11
    iget-object v1, p0, Llzi;->r:Ljava/lang/String;

    if-eqz v1, :cond_12

    .line 252
    const/16 v1, 0xfe

    iget-object v2, p0, Llzi;->r:Ljava/lang/String;

    .line 253
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 255
    :cond_12
    return v0
.end method
