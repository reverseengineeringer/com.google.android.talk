.class public final Llzq;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Llzq;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile m:[Llzq;


# instance fields
.field public a:Llzt;

.field public b:Lmau;

.field public c:I

.field public d:Ljava/lang/Integer;

.field public e:Llzt;

.field public f:Lmau;

.field public g:Ljava/lang/Boolean;

.field public h:[Llzy;

.field public i:Ljava/lang/Boolean;

.field public j:Ljava/lang/String;

.field public k:I

.field public l:Litu;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/high16 v2, -0x80000000

    const/4 v1, 0x0

    .line 68
    invoke-direct {p0}, Llyb;-><init>()V

    .line 69
    iput-object v1, p0, Llzq;->a:Llzt;

    .line 70
    iput-object v1, p0, Llzq;->b:Lmau;

    .line 71
    iput v2, p0, Llzq;->c:I

    .line 72
    iput-object v1, p0, Llzq;->d:Ljava/lang/Integer;

    .line 73
    iput-object v1, p0, Llzq;->e:Llzt;

    .line 74
    iput-object v1, p0, Llzq;->f:Lmau;

    .line 75
    iput-object v1, p0, Llzq;->g:Ljava/lang/Boolean;

    .line 76
    invoke-static {}, Llzy;->d()[Llzy;

    move-result-object v0

    iput-object v0, p0, Llzq;->h:[Llzy;

    .line 77
    iput-object v1, p0, Llzq;->i:Ljava/lang/Boolean;

    .line 78
    iput-object v1, p0, Llzq;->j:Ljava/lang/String;

    .line 79
    iput v2, p0, Llzq;->k:I

    .line 80
    iput-object v1, p0, Llzq;->l:Litu;

    .line 81
    iput-object v1, p0, Llzq;->eD:Llyd;

    .line 82
    const/4 v0, -0x1

    iput v0, p0, Llzq;->eE:I

    .line 83
    return-void
.end method

.method public static d()[Llzq;
    .locals 2

    .prologue
    .line 19
    sget-object v0, Llzq;->m:[Llzq;

    if-nez v0, :cond_1

    .line 20
    sget-object v1, Llyf;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 22
    :try_start_0
    sget-object v0, Llzq;->m:[Llzq;

    if-nez v0, :cond_0

    .line 23
    const/4 v0, 0x0

    new-array v0, v0, [Llzq;

    sput-object v0, Llzq;->m:[Llzq;

    .line 25
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    :cond_1
    sget-object v0, Llzq;->m:[Llzq;

    return-object v0

    .line 25
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

    .line 3196
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 3197
    sparse-switch v0, :sswitch_data_0

    .line 3201
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3202
    :sswitch_0
    return-object p0

    .line 3207
    :sswitch_1
    iget-object v0, p0, Llzq;->a:Llzt;

    if-nez v0, :cond_1

    .line 3208
    new-instance v0, Llzt;

    invoke-direct {v0}, Llzt;-><init>()V

    iput-object v0, p0, Llzq;->a:Llzt;

    .line 3210
    :cond_1
    iget-object v0, p0, Llzq;->a:Llzt;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 3214
    :sswitch_2
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    .line 3215
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 3223
    :pswitch_0
    iput v0, p0, Llzq;->c:I

    goto :goto_0

    .line 3229
    :sswitch_3
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Llzq;->d:Ljava/lang/Integer;

    goto :goto_0

    .line 3233
    :sswitch_4
    iget-object v0, p0, Llzq;->e:Llzt;

    if-nez v0, :cond_2

    .line 3234
    new-instance v0, Llzt;

    invoke-direct {v0}, Llzt;-><init>()V

    iput-object v0, p0, Llzq;->e:Llzt;

    .line 3236
    :cond_2
    iget-object v0, p0, Llzq;->e:Llzt;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 3240
    :sswitch_5
    invoke-virtual {p1}, Llxy;->i()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Llzq;->g:Ljava/lang/Boolean;

    goto :goto_0

    .line 3244
    :sswitch_6
    const/16 v0, 0x32

    .line 3245
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v2

    .line 3246
    iget-object v0, p0, Llzq;->h:[Llzy;

    if-nez v0, :cond_4

    move v0, v1

    .line 3247
    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Llzy;

    .line 3249
    if-eqz v0, :cond_3

    .line 3250
    iget-object v3, p0, Llzq;->h:[Llzy;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3252
    :cond_3
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_5

    .line 3253
    new-instance v3, Llzy;

    invoke-direct {v3}, Llzy;-><init>()V

    aput-object v3, v2, v0

    .line 3254
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Llxy;->a(Llyi;)V

    .line 3255
    invoke-virtual {p1}, Llxy;->a()I

    .line 3252
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 3246
    :cond_4
    iget-object v0, p0, Llzq;->h:[Llzy;

    array-length v0, v0

    goto :goto_1

    .line 3258
    :cond_5
    new-instance v3, Llzy;

    invoke-direct {v3}, Llzy;-><init>()V

    aput-object v3, v2, v0

    .line 3259
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    .line 3260
    iput-object v2, p0, Llzq;->h:[Llzy;

    goto/16 :goto_0

    .line 3264
    :sswitch_7
    invoke-virtual {p1}, Llxy;->i()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Llzq;->i:Ljava/lang/Boolean;

    goto/16 :goto_0

    .line 3268
    :sswitch_8
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Llzq;->j:Ljava/lang/String;

    goto/16 :goto_0

    .line 3272
    :sswitch_9
    iget-object v0, p0, Llzq;->b:Lmau;

    if-nez v0, :cond_6

    .line 3273
    new-instance v0, Lmau;

    invoke-direct {v0}, Lmau;-><init>()V

    iput-object v0, p0, Llzq;->b:Lmau;

    .line 3275
    :cond_6
    iget-object v0, p0, Llzq;->b:Lmau;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto/16 :goto_0

    .line 3279
    :sswitch_a
    iget-object v0, p0, Llzq;->l:Litu;

    if-nez v0, :cond_7

    .line 3280
    new-instance v0, Litu;

    invoke-direct {v0}, Litu;-><init>()V

    iput-object v0, p0, Llzq;->l:Litu;

    .line 3282
    :cond_7
    iget-object v0, p0, Llzq;->l:Litu;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto/16 :goto_0

    .line 3286
    :sswitch_b
    iget-object v0, p0, Llzq;->f:Lmau;

    if-nez v0, :cond_8

    .line 3287
    new-instance v0, Lmau;

    invoke-direct {v0}, Lmau;-><init>()V

    iput-object v0, p0, Llzq;->f:Lmau;

    .line 3289
    :cond_8
    iget-object v0, p0, Llzq;->f:Lmau;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto/16 :goto_0

    .line 3293
    :sswitch_c
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    .line 3294
    packed-switch v0, :pswitch_data_1

    goto/16 :goto_0

    .line 3298
    :pswitch_1
    iput v0, p0, Llzq;->k:I

    goto/16 :goto_0

    .line 3197
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
        0x22 -> :sswitch_4
        0x28 -> :sswitch_5
        0x32 -> :sswitch_6
        0x38 -> :sswitch_7
        0x42 -> :sswitch_8
        0x4a -> :sswitch_9
        0x52 -> :sswitch_a
        0x5a -> :sswitch_b
        0x60 -> :sswitch_c
    .end sparse-switch

    .line 3215
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    .line 3294
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public a(Llxz;)V
    .locals 4

    .prologue
    const/high16 v3, -0x80000000

    .line 88
    iget-object v0, p0, Llzq;->a:Llzt;

    if-eqz v0, :cond_0

    .line 89
    const/4 v0, 0x1

    iget-object v1, p0, Llzq;->a:Llzt;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 91
    :cond_0
    iget v0, p0, Llzq;->c:I

    if-eq v0, v3, :cond_1

    .line 92
    const/4 v0, 0x2

    iget v1, p0, Llzq;->c:I

    invoke-virtual {p1, v0, v1}, Llxz;->a(II)V

    .line 94
    :cond_1
    iget-object v0, p0, Llzq;->d:Ljava/lang/Integer;

    if-eqz v0, :cond_2

    .line 95
    const/4 v0, 0x3

    iget-object v1, p0, Llzq;->d:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(II)V

    .line 97
    :cond_2
    iget-object v0, p0, Llzq;->e:Llzt;

    if-eqz v0, :cond_3

    .line 98
    const/4 v0, 0x4

    iget-object v1, p0, Llzq;->e:Llzt;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 100
    :cond_3
    iget-object v0, p0, Llzq;->g:Ljava/lang/Boolean;

    if-eqz v0, :cond_4

    .line 101
    const/4 v0, 0x5

    iget-object v1, p0, Llzq;->g:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(IZ)V

    .line 103
    :cond_4
    iget-object v0, p0, Llzq;->h:[Llzy;

    if-eqz v0, :cond_6

    iget-object v0, p0, Llzq;->h:[Llzy;

    array-length v0, v0

    if-lez v0, :cond_6

    .line 104
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Llzq;->h:[Llzy;

    array-length v1, v1

    if-ge v0, v1, :cond_6

    .line 105
    iget-object v1, p0, Llzq;->h:[Llzy;

    aget-object v1, v1, v0

    .line 106
    if-eqz v1, :cond_5

    .line 107
    const/4 v2, 0x6

    invoke-virtual {p1, v2, v1}, Llxz;->b(ILlyi;)V

    .line 104
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 111
    :cond_6
    iget-object v0, p0, Llzq;->i:Ljava/lang/Boolean;

    if-eqz v0, :cond_7

    .line 112
    const/4 v0, 0x7

    iget-object v1, p0, Llzq;->i:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(IZ)V

    .line 114
    :cond_7
    iget-object v0, p0, Llzq;->j:Ljava/lang/String;

    if-eqz v0, :cond_8

    .line 115
    const/16 v0, 0x8

    iget-object v1, p0, Llzq;->j:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 117
    :cond_8
    iget-object v0, p0, Llzq;->b:Lmau;

    if-eqz v0, :cond_9

    .line 118
    const/16 v0, 0x9

    iget-object v1, p0, Llzq;->b:Lmau;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 120
    :cond_9
    iget-object v0, p0, Llzq;->l:Litu;

    if-eqz v0, :cond_a

    .line 121
    const/16 v0, 0xa

    iget-object v1, p0, Llzq;->l:Litu;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 123
    :cond_a
    iget-object v0, p0, Llzq;->f:Lmau;

    if-eqz v0, :cond_b

    .line 124
    const/16 v0, 0xb

    iget-object v1, p0, Llzq;->f:Lmau;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 126
    :cond_b
    iget v0, p0, Llzq;->k:I

    if-eq v0, v3, :cond_c

    .line 127
    const/16 v0, 0xc

    iget v1, p0, Llzq;->k:I

    invoke-virtual {p1, v0, v1}, Llxz;->a(II)V

    .line 129
    :cond_c
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 130
    return-void
.end method

.method protected b()I
    .locals 6

    .prologue
    const/high16 v4, -0x80000000

    .line 134
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 135
    iget-object v1, p0, Llzq;->a:Llzt;

    if-eqz v1, :cond_0

    .line 136
    const/4 v1, 0x1

    iget-object v2, p0, Llzq;->a:Llzt;

    .line 137
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 139
    :cond_0
    iget v1, p0, Llzq;->c:I

    if-eq v1, v4, :cond_1

    .line 140
    const/4 v1, 0x2

    iget v2, p0, Llzq;->c:I

    .line 141
    invoke-static {v1, v2}, Llxz;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 143
    :cond_1
    iget-object v1, p0, Llzq;->d:Ljava/lang/Integer;

    if-eqz v1, :cond_2

    .line 144
    const/4 v1, 0x3

    iget-object v2, p0, Llzq;->d:Ljava/lang/Integer;

    .line 145
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Llxz;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 147
    :cond_2
    iget-object v1, p0, Llzq;->e:Llzt;

    if-eqz v1, :cond_3

    .line 148
    const/4 v1, 0x4

    iget-object v2, p0, Llzq;->e:Llzt;

    .line 149
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 151
    :cond_3
    iget-object v1, p0, Llzq;->g:Ljava/lang/Boolean;

    if-eqz v1, :cond_4

    .line 152
    const/4 v1, 0x5

    iget-object v2, p0, Llzq;->g:Ljava/lang/Boolean;

    .line 153
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 1620
    invoke-static {v1}, Llxz;->f(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 153
    add-int/2addr v0, v1

    .line 155
    :cond_4
    iget-object v1, p0, Llzq;->h:[Llzy;

    if-eqz v1, :cond_7

    iget-object v1, p0, Llzq;->h:[Llzy;

    array-length v1, v1

    if-lez v1, :cond_7

    .line 156
    const/4 v1, 0x0

    move v5, v1

    move v1, v0

    move v0, v5

    :goto_0
    iget-object v2, p0, Llzq;->h:[Llzy;

    array-length v2, v2

    if-ge v0, v2, :cond_6

    .line 157
    iget-object v2, p0, Llzq;->h:[Llzy;

    aget-object v2, v2, v0

    .line 158
    if-eqz v2, :cond_5

    .line 159
    const/4 v3, 0x6

    .line 160
    invoke-static {v3, v2}, Llxz;->d(ILlyi;)I

    move-result v2

    add-int/2addr v1, v2

    .line 156
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_6
    move v0, v1

    .line 164
    :cond_7
    iget-object v1, p0, Llzq;->i:Ljava/lang/Boolean;

    if-eqz v1, :cond_8

    .line 165
    const/4 v1, 0x7

    iget-object v2, p0, Llzq;->i:Ljava/lang/Boolean;

    .line 166
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 2620
    invoke-static {v1}, Llxz;->f(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 166
    add-int/2addr v0, v1

    .line 168
    :cond_8
    iget-object v1, p0, Llzq;->j:Ljava/lang/String;

    if-eqz v1, :cond_9

    .line 169
    const/16 v1, 0x8

    iget-object v2, p0, Llzq;->j:Ljava/lang/String;

    .line 170
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 172
    :cond_9
    iget-object v1, p0, Llzq;->b:Lmau;

    if-eqz v1, :cond_a

    .line 173
    const/16 v1, 0x9

    iget-object v2, p0, Llzq;->b:Lmau;

    .line 174
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 176
    :cond_a
    iget-object v1, p0, Llzq;->l:Litu;

    if-eqz v1, :cond_b

    .line 177
    const/16 v1, 0xa

    iget-object v2, p0, Llzq;->l:Litu;

    .line 178
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 180
    :cond_b
    iget-object v1, p0, Llzq;->f:Lmau;

    if-eqz v1, :cond_c

    .line 181
    const/16 v1, 0xb

    iget-object v2, p0, Llzq;->f:Lmau;

    .line 182
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 184
    :cond_c
    iget v1, p0, Llzq;->k:I

    if-eq v1, v4, :cond_d

    .line 185
    const/16 v1, 0xc

    iget v2, p0, Llzq;->k:I

    .line 186
    invoke-static {v1, v2}, Llxz;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 188
    :cond_d
    return v0
.end method
