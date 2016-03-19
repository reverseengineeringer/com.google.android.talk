.class public final Llil;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Llil;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Ljava/lang/Boolean;

.field public b:Llhz;

.field public c:Llik;

.field public d:Llhw;

.field public e:Lljp;

.field public f:Llkp;

.field public g:Llhm;

.field public h:Llkb;

.field public i:Llhv;

.field public j:Llie;

.field public k:Llid;

.field public l:Llig;

.field public m:Llkj;

.field public n:Llhx;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 71
    invoke-direct {p0}, Llyb;-><init>()V

    .line 1076
    iput-object v0, p0, Llil;->a:Ljava/lang/Boolean;

    .line 1077
    iput-object v0, p0, Llil;->b:Llhz;

    .line 1078
    iput-object v0, p0, Llil;->c:Llik;

    .line 1079
    iput-object v0, p0, Llil;->d:Llhw;

    .line 1080
    iput-object v0, p0, Llil;->e:Lljp;

    .line 1081
    iput-object v0, p0, Llil;->f:Llkp;

    .line 1082
    iput-object v0, p0, Llil;->g:Llhm;

    .line 1083
    iput-object v0, p0, Llil;->h:Llkb;

    .line 1084
    iput-object v0, p0, Llil;->i:Llhv;

    .line 1085
    iput-object v0, p0, Llil;->j:Llie;

    .line 1086
    iput-object v0, p0, Llil;->k:Llid;

    .line 1087
    iput-object v0, p0, Llil;->l:Llig;

    .line 1088
    iput-object v0, p0, Llil;->m:Llkj;

    .line 1089
    iput-object v0, p0, Llil;->n:Llhx;

    .line 1090
    iput-object v0, p0, Llil;->eD:Llyd;

    .line 1091
    const/4 v0, -0x1

    iput v0, p0, Llil;->eE:I

    .line 73
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 1

    .prologue
    .line 2210
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 2211
    sparse-switch v0, :sswitch_data_0

    .line 2215
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2216
    :sswitch_0
    return-object p0

    .line 2221
    :sswitch_1
    iget-object v0, p0, Llil;->b:Llhz;

    if-nez v0, :cond_1

    .line 2222
    new-instance v0, Llhz;

    invoke-direct {v0}, Llhz;-><init>()V

    iput-object v0, p0, Llil;->b:Llhz;

    .line 2224
    :cond_1
    iget-object v0, p0, Llil;->b:Llhz;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 2228
    :sswitch_2
    iget-object v0, p0, Llil;->c:Llik;

    if-nez v0, :cond_2

    .line 2229
    new-instance v0, Llik;

    invoke-direct {v0}, Llik;-><init>()V

    iput-object v0, p0, Llil;->c:Llik;

    .line 2231
    :cond_2
    iget-object v0, p0, Llil;->c:Llik;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 2235
    :sswitch_3
    invoke-virtual {p1}, Llxy;->i()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Llil;->a:Ljava/lang/Boolean;

    goto :goto_0

    .line 2239
    :sswitch_4
    iget-object v0, p0, Llil;->d:Llhw;

    if-nez v0, :cond_3

    .line 2240
    new-instance v0, Llhw;

    invoke-direct {v0}, Llhw;-><init>()V

    iput-object v0, p0, Llil;->d:Llhw;

    .line 2242
    :cond_3
    iget-object v0, p0, Llil;->d:Llhw;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 2246
    :sswitch_5
    iget-object v0, p0, Llil;->e:Lljp;

    if-nez v0, :cond_4

    .line 2247
    new-instance v0, Lljp;

    invoke-direct {v0}, Lljp;-><init>()V

    iput-object v0, p0, Llil;->e:Lljp;

    .line 2249
    :cond_4
    iget-object v0, p0, Llil;->e:Lljp;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 2253
    :sswitch_6
    iget-object v0, p0, Llil;->f:Llkp;

    if-nez v0, :cond_5

    .line 2254
    new-instance v0, Llkp;

    invoke-direct {v0}, Llkp;-><init>()V

    iput-object v0, p0, Llil;->f:Llkp;

    .line 2256
    :cond_5
    iget-object v0, p0, Llil;->f:Llkp;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 2260
    :sswitch_7
    iget-object v0, p0, Llil;->g:Llhm;

    if-nez v0, :cond_6

    .line 2261
    new-instance v0, Llhm;

    invoke-direct {v0}, Llhm;-><init>()V

    iput-object v0, p0, Llil;->g:Llhm;

    .line 2263
    :cond_6
    iget-object v0, p0, Llil;->g:Llhm;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 2267
    :sswitch_8
    iget-object v0, p0, Llil;->h:Llkb;

    if-nez v0, :cond_7

    .line 2268
    new-instance v0, Llkb;

    invoke-direct {v0}, Llkb;-><init>()V

    iput-object v0, p0, Llil;->h:Llkb;

    .line 2270
    :cond_7
    iget-object v0, p0, Llil;->h:Llkb;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto/16 :goto_0

    .line 2274
    :sswitch_9
    iget-object v0, p0, Llil;->i:Llhv;

    if-nez v0, :cond_8

    .line 2275
    new-instance v0, Llhv;

    invoke-direct {v0}, Llhv;-><init>()V

    iput-object v0, p0, Llil;->i:Llhv;

    .line 2277
    :cond_8
    iget-object v0, p0, Llil;->i:Llhv;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto/16 :goto_0

    .line 2281
    :sswitch_a
    iget-object v0, p0, Llil;->j:Llie;

    if-nez v0, :cond_9

    .line 2282
    new-instance v0, Llie;

    invoke-direct {v0}, Llie;-><init>()V

    iput-object v0, p0, Llil;->j:Llie;

    .line 2284
    :cond_9
    iget-object v0, p0, Llil;->j:Llie;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto/16 :goto_0

    .line 2288
    :sswitch_b
    iget-object v0, p0, Llil;->l:Llig;

    if-nez v0, :cond_a

    .line 2289
    new-instance v0, Llig;

    invoke-direct {v0}, Llig;-><init>()V

    iput-object v0, p0, Llil;->l:Llig;

    .line 2291
    :cond_a
    iget-object v0, p0, Llil;->l:Llig;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto/16 :goto_0

    .line 2295
    :sswitch_c
    iget-object v0, p0, Llil;->m:Llkj;

    if-nez v0, :cond_b

    .line 2296
    new-instance v0, Llkj;

    invoke-direct {v0}, Llkj;-><init>()V

    iput-object v0, p0, Llil;->m:Llkj;

    .line 2298
    :cond_b
    iget-object v0, p0, Llil;->m:Llkj;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto/16 :goto_0

    .line 2302
    :sswitch_d
    iget-object v0, p0, Llil;->n:Llhx;

    if-nez v0, :cond_c

    .line 2303
    new-instance v0, Llhx;

    invoke-direct {v0}, Llhx;-><init>()V

    iput-object v0, p0, Llil;->n:Llhx;

    .line 2305
    :cond_c
    iget-object v0, p0, Llil;->n:Llhx;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto/16 :goto_0

    .line 2309
    :sswitch_e
    iget-object v0, p0, Llil;->k:Llid;

    if-nez v0, :cond_d

    .line 2310
    new-instance v0, Llid;

    invoke-direct {v0}, Llid;-><init>()V

    iput-object v0, p0, Llil;->k:Llid;

    .line 2312
    :cond_d
    iget-object v0, p0, Llil;->k:Llid;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto/16 :goto_0

    .line 2211
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x18 -> :sswitch_3
        0x22 -> :sswitch_4
        0x2a -> :sswitch_5
        0x32 -> :sswitch_6
        0x3a -> :sswitch_7
        0x42 -> :sswitch_8
        0x4a -> :sswitch_9
        0x5a -> :sswitch_a
        0x62 -> :sswitch_b
        0x6a -> :sswitch_c
        0x72 -> :sswitch_d
        0x7a -> :sswitch_e
    .end sparse-switch
.end method

.method public a(Llxz;)V
    .locals 2

    .prologue
    .line 98
    iget-object v0, p0, Llil;->b:Llhz;

    if-eqz v0, :cond_0

    .line 99
    const/4 v0, 0x1

    iget-object v1, p0, Llil;->b:Llhz;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 101
    :cond_0
    iget-object v0, p0, Llil;->c:Llik;

    if-eqz v0, :cond_1

    .line 102
    const/4 v0, 0x2

    iget-object v1, p0, Llil;->c:Llik;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 104
    :cond_1
    iget-object v0, p0, Llil;->a:Ljava/lang/Boolean;

    if-eqz v0, :cond_2

    .line 105
    const/4 v0, 0x3

    iget-object v1, p0, Llil;->a:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(IZ)V

    .line 107
    :cond_2
    iget-object v0, p0, Llil;->d:Llhw;

    if-eqz v0, :cond_3

    .line 108
    const/4 v0, 0x4

    iget-object v1, p0, Llil;->d:Llhw;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 110
    :cond_3
    iget-object v0, p0, Llil;->e:Lljp;

    if-eqz v0, :cond_4

    .line 111
    const/4 v0, 0x5

    iget-object v1, p0, Llil;->e:Lljp;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 113
    :cond_4
    iget-object v0, p0, Llil;->f:Llkp;

    if-eqz v0, :cond_5

    .line 114
    const/4 v0, 0x6

    iget-object v1, p0, Llil;->f:Llkp;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 116
    :cond_5
    iget-object v0, p0, Llil;->g:Llhm;

    if-eqz v0, :cond_6

    .line 117
    const/4 v0, 0x7

    iget-object v1, p0, Llil;->g:Llhm;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 119
    :cond_6
    iget-object v0, p0, Llil;->h:Llkb;

    if-eqz v0, :cond_7

    .line 120
    const/16 v0, 0x8

    iget-object v1, p0, Llil;->h:Llkb;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 122
    :cond_7
    iget-object v0, p0, Llil;->i:Llhv;

    if-eqz v0, :cond_8

    .line 123
    const/16 v0, 0x9

    iget-object v1, p0, Llil;->i:Llhv;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 125
    :cond_8
    iget-object v0, p0, Llil;->j:Llie;

    if-eqz v0, :cond_9

    .line 126
    const/16 v0, 0xb

    iget-object v1, p0, Llil;->j:Llie;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 128
    :cond_9
    iget-object v0, p0, Llil;->l:Llig;

    if-eqz v0, :cond_a

    .line 129
    const/16 v0, 0xc

    iget-object v1, p0, Llil;->l:Llig;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 131
    :cond_a
    iget-object v0, p0, Llil;->m:Llkj;

    if-eqz v0, :cond_b

    .line 132
    const/16 v0, 0xd

    iget-object v1, p0, Llil;->m:Llkj;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 134
    :cond_b
    iget-object v0, p0, Llil;->n:Llhx;

    if-eqz v0, :cond_c

    .line 135
    const/16 v0, 0xe

    iget-object v1, p0, Llil;->n:Llhx;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 137
    :cond_c
    iget-object v0, p0, Llil;->k:Llid;

    if-eqz v0, :cond_d

    .line 138
    const/16 v0, 0xf

    iget-object v1, p0, Llil;->k:Llid;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 140
    :cond_d
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 141
    return-void
.end method

.method protected b()I
    .locals 3

    .prologue
    .line 145
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 146
    iget-object v1, p0, Llil;->b:Llhz;

    if-eqz v1, :cond_0

    .line 147
    const/4 v1, 0x1

    iget-object v2, p0, Llil;->b:Llhz;

    .line 148
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 150
    :cond_0
    iget-object v1, p0, Llil;->c:Llik;

    if-eqz v1, :cond_1

    .line 151
    const/4 v1, 0x2

    iget-object v2, p0, Llil;->c:Llik;

    .line 152
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 154
    :cond_1
    iget-object v1, p0, Llil;->a:Ljava/lang/Boolean;

    if-eqz v1, :cond_2

    .line 155
    const/4 v1, 0x3

    iget-object v2, p0, Llil;->a:Ljava/lang/Boolean;

    .line 156
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 1620
    invoke-static {v1}, Llxz;->f(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 156
    add-int/2addr v0, v1

    .line 158
    :cond_2
    iget-object v1, p0, Llil;->d:Llhw;

    if-eqz v1, :cond_3

    .line 159
    const/4 v1, 0x4

    iget-object v2, p0, Llil;->d:Llhw;

    .line 160
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 162
    :cond_3
    iget-object v1, p0, Llil;->e:Lljp;

    if-eqz v1, :cond_4

    .line 163
    const/4 v1, 0x5

    iget-object v2, p0, Llil;->e:Lljp;

    .line 164
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 166
    :cond_4
    iget-object v1, p0, Llil;->f:Llkp;

    if-eqz v1, :cond_5

    .line 167
    const/4 v1, 0x6

    iget-object v2, p0, Llil;->f:Llkp;

    .line 168
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 170
    :cond_5
    iget-object v1, p0, Llil;->g:Llhm;

    if-eqz v1, :cond_6

    .line 171
    const/4 v1, 0x7

    iget-object v2, p0, Llil;->g:Llhm;

    .line 172
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 174
    :cond_6
    iget-object v1, p0, Llil;->h:Llkb;

    if-eqz v1, :cond_7

    .line 175
    const/16 v1, 0x8

    iget-object v2, p0, Llil;->h:Llkb;

    .line 176
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 178
    :cond_7
    iget-object v1, p0, Llil;->i:Llhv;

    if-eqz v1, :cond_8

    .line 179
    const/16 v1, 0x9

    iget-object v2, p0, Llil;->i:Llhv;

    .line 180
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 182
    :cond_8
    iget-object v1, p0, Llil;->j:Llie;

    if-eqz v1, :cond_9

    .line 183
    const/16 v1, 0xb

    iget-object v2, p0, Llil;->j:Llie;

    .line 184
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 186
    :cond_9
    iget-object v1, p0, Llil;->l:Llig;

    if-eqz v1, :cond_a

    .line 187
    const/16 v1, 0xc

    iget-object v2, p0, Llil;->l:Llig;

    .line 188
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 190
    :cond_a
    iget-object v1, p0, Llil;->m:Llkj;

    if-eqz v1, :cond_b

    .line 191
    const/16 v1, 0xd

    iget-object v2, p0, Llil;->m:Llkj;

    .line 192
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 194
    :cond_b
    iget-object v1, p0, Llil;->n:Llhx;

    if-eqz v1, :cond_c

    .line 195
    const/16 v1, 0xe

    iget-object v2, p0, Llil;->n:Llhx;

    .line 196
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 198
    :cond_c
    iget-object v1, p0, Llil;->k:Llid;

    if-eqz v1, :cond_d

    .line 199
    const/16 v1, 0xf

    iget-object v2, p0, Llil;->k:Llid;

    .line 200
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 202
    :cond_d
    return v0
.end method
