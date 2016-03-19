.class public final Llri;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Llri;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Ljava/lang/Boolean;

.field public b:Llpm;

.field public c:Llfv;

.field public d:Llfx;

.field public e:Llgr;

.field public f:Llgy;

.field public g:Llrc;

.field public h:Llph;

.field public i:Lltp;

.field public j:Llrk;

.field public k:Llre;

.field public l:Llrn;

.field public m:Llsl;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 64
    invoke-direct {p0}, Llyb;-><init>()V

    .line 65
    iput-object v0, p0, Llri;->a:Ljava/lang/Boolean;

    .line 66
    iput-object v0, p0, Llri;->b:Llpm;

    .line 67
    iput-object v0, p0, Llri;->c:Llfv;

    .line 68
    iput-object v0, p0, Llri;->d:Llfx;

    .line 69
    iput-object v0, p0, Llri;->e:Llgr;

    .line 70
    iput-object v0, p0, Llri;->f:Llgy;

    .line 71
    iput-object v0, p0, Llri;->g:Llrc;

    .line 72
    iput-object v0, p0, Llri;->h:Llph;

    .line 73
    iput-object v0, p0, Llri;->i:Lltp;

    .line 74
    iput-object v0, p0, Llri;->j:Llrk;

    .line 75
    iput-object v0, p0, Llri;->k:Llre;

    .line 76
    iput-object v0, p0, Llri;->l:Llrn;

    .line 77
    iput-object v0, p0, Llri;->m:Llsl;

    .line 78
    iput-object v0, p0, Llri;->eD:Llyd;

    .line 79
    const/4 v0, -0x1

    iput v0, p0, Llri;->eE:I

    .line 80
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 1

    .prologue
    .line 2190
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 2191
    sparse-switch v0, :sswitch_data_0

    .line 2195
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2196
    :sswitch_0
    return-object p0

    .line 2201
    :sswitch_1
    iget-object v0, p0, Llri;->b:Llpm;

    if-nez v0, :cond_1

    .line 2202
    new-instance v0, Llpm;

    invoke-direct {v0}, Llpm;-><init>()V

    iput-object v0, p0, Llri;->b:Llpm;

    .line 2204
    :cond_1
    iget-object v0, p0, Llri;->b:Llpm;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 2208
    :sswitch_2
    invoke-virtual {p1}, Llxy;->i()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Llri;->a:Ljava/lang/Boolean;

    goto :goto_0

    .line 2212
    :sswitch_3
    iget-object v0, p0, Llri;->c:Llfv;

    if-nez v0, :cond_2

    .line 2213
    new-instance v0, Llfv;

    invoke-direct {v0}, Llfv;-><init>()V

    iput-object v0, p0, Llri;->c:Llfv;

    .line 2215
    :cond_2
    iget-object v0, p0, Llri;->c:Llfv;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 2219
    :sswitch_4
    iget-object v0, p0, Llri;->d:Llfx;

    if-nez v0, :cond_3

    .line 2220
    new-instance v0, Llfx;

    invoke-direct {v0}, Llfx;-><init>()V

    iput-object v0, p0, Llri;->d:Llfx;

    .line 2222
    :cond_3
    iget-object v0, p0, Llri;->d:Llfx;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 2226
    :sswitch_5
    iget-object v0, p0, Llri;->e:Llgr;

    if-nez v0, :cond_4

    .line 2227
    new-instance v0, Llgr;

    invoke-direct {v0}, Llgr;-><init>()V

    iput-object v0, p0, Llri;->e:Llgr;

    .line 2229
    :cond_4
    iget-object v0, p0, Llri;->e:Llgr;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 2233
    :sswitch_6
    iget-object v0, p0, Llri;->f:Llgy;

    if-nez v0, :cond_5

    .line 2234
    new-instance v0, Llgy;

    invoke-direct {v0}, Llgy;-><init>()V

    iput-object v0, p0, Llri;->f:Llgy;

    .line 2236
    :cond_5
    iget-object v0, p0, Llri;->f:Llgy;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 2240
    :sswitch_7
    iget-object v0, p0, Llri;->g:Llrc;

    if-nez v0, :cond_6

    .line 2241
    new-instance v0, Llrc;

    invoke-direct {v0}, Llrc;-><init>()V

    iput-object v0, p0, Llri;->g:Llrc;

    .line 2243
    :cond_6
    iget-object v0, p0, Llri;->g:Llrc;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 2247
    :sswitch_8
    iget-object v0, p0, Llri;->h:Llph;

    if-nez v0, :cond_7

    .line 2248
    new-instance v0, Llph;

    invoke-direct {v0}, Llph;-><init>()V

    iput-object v0, p0, Llri;->h:Llph;

    .line 2250
    :cond_7
    iget-object v0, p0, Llri;->h:Llph;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto/16 :goto_0

    .line 2254
    :sswitch_9
    iget-object v0, p0, Llri;->i:Lltp;

    if-nez v0, :cond_8

    .line 2255
    new-instance v0, Lltp;

    invoke-direct {v0}, Lltp;-><init>()V

    iput-object v0, p0, Llri;->i:Lltp;

    .line 2257
    :cond_8
    iget-object v0, p0, Llri;->i:Lltp;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto/16 :goto_0

    .line 2261
    :sswitch_a
    iget-object v0, p0, Llri;->j:Llrk;

    if-nez v0, :cond_9

    .line 2262
    new-instance v0, Llrk;

    invoke-direct {v0}, Llrk;-><init>()V

    iput-object v0, p0, Llri;->j:Llrk;

    .line 2264
    :cond_9
    iget-object v0, p0, Llri;->j:Llrk;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto/16 :goto_0

    .line 2268
    :sswitch_b
    iget-object v0, p0, Llri;->k:Llre;

    if-nez v0, :cond_a

    .line 2269
    new-instance v0, Llre;

    invoke-direct {v0}, Llre;-><init>()V

    iput-object v0, p0, Llri;->k:Llre;

    .line 2271
    :cond_a
    iget-object v0, p0, Llri;->k:Llre;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto/16 :goto_0

    .line 2275
    :sswitch_c
    iget-object v0, p0, Llri;->l:Llrn;

    if-nez v0, :cond_b

    .line 2276
    new-instance v0, Llrn;

    invoke-direct {v0}, Llrn;-><init>()V

    iput-object v0, p0, Llri;->l:Llrn;

    .line 2278
    :cond_b
    iget-object v0, p0, Llri;->l:Llrn;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto/16 :goto_0

    .line 2282
    :sswitch_d
    iget-object v0, p0, Llri;->m:Llsl;

    if-nez v0, :cond_c

    .line 2283
    new-instance v0, Llsl;

    invoke-direct {v0}, Llsl;-><init>()V

    iput-object v0, p0, Llri;->m:Llsl;

    .line 2285
    :cond_c
    iget-object v0, p0, Llri;->m:Llsl;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto/16 :goto_0

    .line 2191
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x10 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
        0x2a -> :sswitch_5
        0x32 -> :sswitch_6
        0x3a -> :sswitch_7
        0x7a -> :sswitch_8
        0x82 -> :sswitch_9
        0x8a -> :sswitch_a
        0x9a -> :sswitch_b
        0xa2 -> :sswitch_c
        0xaa -> :sswitch_d
    .end sparse-switch
.end method

.method public a(Llxz;)V
    .locals 2

    .prologue
    .line 85
    iget-object v0, p0, Llri;->b:Llpm;

    if-eqz v0, :cond_0

    .line 86
    const/4 v0, 0x1

    iget-object v1, p0, Llri;->b:Llpm;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 88
    :cond_0
    iget-object v0, p0, Llri;->a:Ljava/lang/Boolean;

    if-eqz v0, :cond_1

    .line 89
    const/4 v0, 0x2

    iget-object v1, p0, Llri;->a:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(IZ)V

    .line 91
    :cond_1
    iget-object v0, p0, Llri;->c:Llfv;

    if-eqz v0, :cond_2

    .line 92
    const/4 v0, 0x3

    iget-object v1, p0, Llri;->c:Llfv;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 94
    :cond_2
    iget-object v0, p0, Llri;->d:Llfx;

    if-eqz v0, :cond_3

    .line 95
    const/4 v0, 0x4

    iget-object v1, p0, Llri;->d:Llfx;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 97
    :cond_3
    iget-object v0, p0, Llri;->e:Llgr;

    if-eqz v0, :cond_4

    .line 98
    const/4 v0, 0x5

    iget-object v1, p0, Llri;->e:Llgr;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 100
    :cond_4
    iget-object v0, p0, Llri;->f:Llgy;

    if-eqz v0, :cond_5

    .line 101
    const/4 v0, 0x6

    iget-object v1, p0, Llri;->f:Llgy;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 103
    :cond_5
    iget-object v0, p0, Llri;->g:Llrc;

    if-eqz v0, :cond_6

    .line 104
    const/4 v0, 0x7

    iget-object v1, p0, Llri;->g:Llrc;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 106
    :cond_6
    iget-object v0, p0, Llri;->h:Llph;

    if-eqz v0, :cond_7

    .line 107
    const/16 v0, 0xf

    iget-object v1, p0, Llri;->h:Llph;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 109
    :cond_7
    iget-object v0, p0, Llri;->i:Lltp;

    if-eqz v0, :cond_8

    .line 110
    const/16 v0, 0x10

    iget-object v1, p0, Llri;->i:Lltp;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 112
    :cond_8
    iget-object v0, p0, Llri;->j:Llrk;

    if-eqz v0, :cond_9

    .line 113
    const/16 v0, 0x11

    iget-object v1, p0, Llri;->j:Llrk;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 115
    :cond_9
    iget-object v0, p0, Llri;->k:Llre;

    if-eqz v0, :cond_a

    .line 116
    const/16 v0, 0x13

    iget-object v1, p0, Llri;->k:Llre;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 118
    :cond_a
    iget-object v0, p0, Llri;->l:Llrn;

    if-eqz v0, :cond_b

    .line 119
    const/16 v0, 0x14

    iget-object v1, p0, Llri;->l:Llrn;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 121
    :cond_b
    iget-object v0, p0, Llri;->m:Llsl;

    if-eqz v0, :cond_c

    .line 122
    const/16 v0, 0x15

    iget-object v1, p0, Llri;->m:Llsl;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 124
    :cond_c
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 125
    return-void
.end method

.method protected b()I
    .locals 3

    .prologue
    .line 129
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 130
    iget-object v1, p0, Llri;->b:Llpm;

    if-eqz v1, :cond_0

    .line 131
    const/4 v1, 0x1

    iget-object v2, p0, Llri;->b:Llpm;

    .line 132
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 134
    :cond_0
    iget-object v1, p0, Llri;->a:Ljava/lang/Boolean;

    if-eqz v1, :cond_1

    .line 135
    const/4 v1, 0x2

    iget-object v2, p0, Llri;->a:Ljava/lang/Boolean;

    .line 136
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 1620
    invoke-static {v1}, Llxz;->f(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 136
    add-int/2addr v0, v1

    .line 138
    :cond_1
    iget-object v1, p0, Llri;->c:Llfv;

    if-eqz v1, :cond_2

    .line 139
    const/4 v1, 0x3

    iget-object v2, p0, Llri;->c:Llfv;

    .line 140
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 142
    :cond_2
    iget-object v1, p0, Llri;->d:Llfx;

    if-eqz v1, :cond_3

    .line 143
    const/4 v1, 0x4

    iget-object v2, p0, Llri;->d:Llfx;

    .line 144
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 146
    :cond_3
    iget-object v1, p0, Llri;->e:Llgr;

    if-eqz v1, :cond_4

    .line 147
    const/4 v1, 0x5

    iget-object v2, p0, Llri;->e:Llgr;

    .line 148
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 150
    :cond_4
    iget-object v1, p0, Llri;->f:Llgy;

    if-eqz v1, :cond_5

    .line 151
    const/4 v1, 0x6

    iget-object v2, p0, Llri;->f:Llgy;

    .line 152
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 154
    :cond_5
    iget-object v1, p0, Llri;->g:Llrc;

    if-eqz v1, :cond_6

    .line 155
    const/4 v1, 0x7

    iget-object v2, p0, Llri;->g:Llrc;

    .line 156
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 158
    :cond_6
    iget-object v1, p0, Llri;->h:Llph;

    if-eqz v1, :cond_7

    .line 159
    const/16 v1, 0xf

    iget-object v2, p0, Llri;->h:Llph;

    .line 160
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 162
    :cond_7
    iget-object v1, p0, Llri;->i:Lltp;

    if-eqz v1, :cond_8

    .line 163
    const/16 v1, 0x10

    iget-object v2, p0, Llri;->i:Lltp;

    .line 164
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 166
    :cond_8
    iget-object v1, p0, Llri;->j:Llrk;

    if-eqz v1, :cond_9

    .line 167
    const/16 v1, 0x11

    iget-object v2, p0, Llri;->j:Llrk;

    .line 168
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 170
    :cond_9
    iget-object v1, p0, Llri;->k:Llre;

    if-eqz v1, :cond_a

    .line 171
    const/16 v1, 0x13

    iget-object v2, p0, Llri;->k:Llre;

    .line 172
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 174
    :cond_a
    iget-object v1, p0, Llri;->l:Llrn;

    if-eqz v1, :cond_b

    .line 175
    const/16 v1, 0x14

    iget-object v2, p0, Llri;->l:Llrn;

    .line 176
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 178
    :cond_b
    iget-object v1, p0, Llri;->m:Llsl;

    if-eqz v1, :cond_c

    .line 179
    const/16 v1, 0x15

    iget-object v2, p0, Llri;->m:Llsl;

    .line 180
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 182
    :cond_c
    return v0
.end method
