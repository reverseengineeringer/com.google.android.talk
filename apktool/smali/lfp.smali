.class public final Llfp;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Llfp;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile p:[Llfp;


# instance fields
.field public a:Ljava/lang/Integer;

.field public b:Ljava/lang/Integer;

.field public c:Ljava/lang/Integer;

.field public d:Ljava/lang/Integer;

.field public e:Ljava/lang/Float;

.field public f:Ljava/lang/Float;

.field public g:Ljava/lang/Float;

.field public h:Ljava/lang/Float;

.field public i:Ljava/lang/Float;

.field public j:Ljava/lang/Float;

.field public k:Ljava/lang/Float;

.field public l:Ljava/lang/Integer;

.field public m:Ljava/lang/Float;

.field public n:Ljava/lang/Float;

.field public o:Ljava/lang/Float;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 74
    invoke-direct {p0}, Llyb;-><init>()V

    .line 1079
    iput-object v0, p0, Llfp;->a:Ljava/lang/Integer;

    .line 1080
    iput-object v0, p0, Llfp;->b:Ljava/lang/Integer;

    .line 1081
    iput-object v0, p0, Llfp;->c:Ljava/lang/Integer;

    .line 1082
    iput-object v0, p0, Llfp;->d:Ljava/lang/Integer;

    .line 1083
    iput-object v0, p0, Llfp;->e:Ljava/lang/Float;

    .line 1084
    iput-object v0, p0, Llfp;->f:Ljava/lang/Float;

    .line 1085
    iput-object v0, p0, Llfp;->g:Ljava/lang/Float;

    .line 1086
    iput-object v0, p0, Llfp;->h:Ljava/lang/Float;

    .line 1087
    iput-object v0, p0, Llfp;->i:Ljava/lang/Float;

    .line 1088
    iput-object v0, p0, Llfp;->j:Ljava/lang/Float;

    .line 1089
    iput-object v0, p0, Llfp;->k:Ljava/lang/Float;

    .line 1090
    iput-object v0, p0, Llfp;->l:Ljava/lang/Integer;

    .line 1091
    iput-object v0, p0, Llfp;->m:Ljava/lang/Float;

    .line 1092
    iput-object v0, p0, Llfp;->n:Ljava/lang/Float;

    .line 1093
    iput-object v0, p0, Llfp;->o:Ljava/lang/Float;

    .line 1094
    iput-object v0, p0, Llfp;->eD:Llyd;

    .line 1095
    const/4 v0, -0x1

    iput v0, p0, Llfp;->eE:I

    .line 76
    return-void
.end method

.method public static d()[Llfp;
    .locals 2

    .prologue
    .line 16
    sget-object v0, Llfp;->p:[Llfp;

    if-nez v0, :cond_1

    .line 17
    sget-object v1, Llyf;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 19
    :try_start_0
    sget-object v0, Llfp;->p:[Llfp;

    if-nez v0, :cond_0

    .line 20
    const/4 v0, 0x0

    new-array v0, v0, [Llfp;

    sput-object v0, Llfp;->p:[Llfp;

    .line 22
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    :cond_1
    sget-object v0, Llfp;->p:[Llfp;

    return-object v0

    .line 22
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
    .locals 1

    .prologue
    .line 11221
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 11222
    sparse-switch v0, :sswitch_data_0

    .line 11226
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 11227
    :sswitch_0
    return-object p0

    .line 11232
    :sswitch_1
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Llfp;->a:Ljava/lang/Integer;

    goto :goto_0

    .line 11236
    :sswitch_2
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Llfp;->b:Ljava/lang/Integer;

    goto :goto_0

    .line 11240
    :sswitch_3
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Llfp;->c:Ljava/lang/Integer;

    goto :goto_0

    .line 11244
    :sswitch_4
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Llfp;->d:Ljava/lang/Integer;

    goto :goto_0

    .line 11248
    :sswitch_5
    invoke-virtual {p1}, Llxy;->c()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Llfp;->e:Ljava/lang/Float;

    goto :goto_0

    .line 11252
    :sswitch_6
    invoke-virtual {p1}, Llxy;->c()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Llfp;->f:Ljava/lang/Float;

    goto :goto_0

    .line 11256
    :sswitch_7
    invoke-virtual {p1}, Llxy;->c()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Llfp;->g:Ljava/lang/Float;

    goto :goto_0

    .line 11260
    :sswitch_8
    invoke-virtual {p1}, Llxy;->c()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Llfp;->h:Ljava/lang/Float;

    goto :goto_0

    .line 11264
    :sswitch_9
    invoke-virtual {p1}, Llxy;->c()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Llfp;->i:Ljava/lang/Float;

    goto :goto_0

    .line 11268
    :sswitch_a
    invoke-virtual {p1}, Llxy;->c()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Llfp;->j:Ljava/lang/Float;

    goto :goto_0

    .line 11272
    :sswitch_b
    invoke-virtual {p1}, Llxy;->c()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Llfp;->k:Ljava/lang/Float;

    goto/16 :goto_0

    .line 11276
    :sswitch_c
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Llfp;->l:Ljava/lang/Integer;

    goto/16 :goto_0

    .line 11280
    :sswitch_d
    invoke-virtual {p1}, Llxy;->c()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Llfp;->m:Ljava/lang/Float;

    goto/16 :goto_0

    .line 11284
    :sswitch_e
    invoke-virtual {p1}, Llxy;->c()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Llfp;->n:Ljava/lang/Float;

    goto/16 :goto_0

    .line 11288
    :sswitch_f
    invoke-virtual {p1}, Llxy;->c()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Llfp;->o:Ljava/lang/Float;

    goto/16 :goto_0

    .line 11222
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
        0x20 -> :sswitch_4
        0x2d -> :sswitch_5
        0x35 -> :sswitch_6
        0x3d -> :sswitch_7
        0x45 -> :sswitch_8
        0x4d -> :sswitch_9
        0x55 -> :sswitch_a
        0x5d -> :sswitch_b
        0x60 -> :sswitch_c
        0x6d -> :sswitch_d
        0x75 -> :sswitch_e
        0x7d -> :sswitch_f
    .end sparse-switch
.end method

.method public a(Llxz;)V
    .locals 2

    .prologue
    .line 102
    iget-object v0, p0, Llfp;->a:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 103
    const/4 v0, 0x1

    iget-object v1, p0, Llfp;->a:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(II)V

    .line 105
    :cond_0
    iget-object v0, p0, Llfp;->b:Ljava/lang/Integer;

    if-eqz v0, :cond_1

    .line 106
    const/4 v0, 0x2

    iget-object v1, p0, Llfp;->b:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(II)V

    .line 108
    :cond_1
    iget-object v0, p0, Llfp;->c:Ljava/lang/Integer;

    if-eqz v0, :cond_2

    .line 109
    const/4 v0, 0x3

    iget-object v1, p0, Llfp;->c:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(II)V

    .line 111
    :cond_2
    iget-object v0, p0, Llfp;->d:Ljava/lang/Integer;

    if-eqz v0, :cond_3

    .line 112
    const/4 v0, 0x4

    iget-object v1, p0, Llfp;->d:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(II)V

    .line 114
    :cond_3
    iget-object v0, p0, Llfp;->e:Ljava/lang/Float;

    if-eqz v0, :cond_4

    .line 115
    const/4 v0, 0x5

    iget-object v1, p0, Llfp;->e:Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(IF)V

    .line 117
    :cond_4
    iget-object v0, p0, Llfp;->f:Ljava/lang/Float;

    if-eqz v0, :cond_5

    .line 118
    const/4 v0, 0x6

    iget-object v1, p0, Llfp;->f:Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(IF)V

    .line 120
    :cond_5
    iget-object v0, p0, Llfp;->g:Ljava/lang/Float;

    if-eqz v0, :cond_6

    .line 121
    const/4 v0, 0x7

    iget-object v1, p0, Llfp;->g:Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(IF)V

    .line 123
    :cond_6
    iget-object v0, p0, Llfp;->h:Ljava/lang/Float;

    if-eqz v0, :cond_7

    .line 124
    const/16 v0, 0x8

    iget-object v1, p0, Llfp;->h:Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(IF)V

    .line 126
    :cond_7
    iget-object v0, p0, Llfp;->i:Ljava/lang/Float;

    if-eqz v0, :cond_8

    .line 127
    const/16 v0, 0x9

    iget-object v1, p0, Llfp;->i:Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(IF)V

    .line 129
    :cond_8
    iget-object v0, p0, Llfp;->j:Ljava/lang/Float;

    if-eqz v0, :cond_9

    .line 130
    const/16 v0, 0xa

    iget-object v1, p0, Llfp;->j:Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(IF)V

    .line 132
    :cond_9
    iget-object v0, p0, Llfp;->k:Ljava/lang/Float;

    if-eqz v0, :cond_a

    .line 133
    const/16 v0, 0xb

    iget-object v1, p0, Llfp;->k:Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(IF)V

    .line 135
    :cond_a
    iget-object v0, p0, Llfp;->l:Ljava/lang/Integer;

    if-eqz v0, :cond_b

    .line 136
    const/16 v0, 0xc

    iget-object v1, p0, Llfp;->l:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(II)V

    .line 138
    :cond_b
    iget-object v0, p0, Llfp;->m:Ljava/lang/Float;

    if-eqz v0, :cond_c

    .line 139
    const/16 v0, 0xd

    iget-object v1, p0, Llfp;->m:Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(IF)V

    .line 141
    :cond_c
    iget-object v0, p0, Llfp;->n:Ljava/lang/Float;

    if-eqz v0, :cond_d

    .line 142
    const/16 v0, 0xe

    iget-object v1, p0, Llfp;->n:Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(IF)V

    .line 144
    :cond_d
    iget-object v0, p0, Llfp;->o:Ljava/lang/Float;

    if-eqz v0, :cond_e

    .line 145
    const/16 v0, 0xf

    iget-object v1, p0, Llfp;->o:Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(IF)V

    .line 147
    :cond_e
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 148
    return-void
.end method

.method protected b()I
    .locals 3

    .prologue
    .line 152
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 153
    iget-object v1, p0, Llfp;->a:Ljava/lang/Integer;

    if-eqz v1, :cond_0

    .line 154
    const/4 v1, 0x1

    iget-object v2, p0, Llfp;->a:Ljava/lang/Integer;

    .line 155
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Llxz;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 157
    :cond_0
    iget-object v1, p0, Llfp;->b:Ljava/lang/Integer;

    if-eqz v1, :cond_1

    .line 158
    const/4 v1, 0x2

    iget-object v2, p0, Llfp;->b:Ljava/lang/Integer;

    .line 159
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Llxz;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 161
    :cond_1
    iget-object v1, p0, Llfp;->c:Ljava/lang/Integer;

    if-eqz v1, :cond_2

    .line 162
    const/4 v1, 0x3

    iget-object v2, p0, Llfp;->c:Ljava/lang/Integer;

    .line 163
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Llxz;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 165
    :cond_2
    iget-object v1, p0, Llfp;->d:Ljava/lang/Integer;

    if-eqz v1, :cond_3

    .line 166
    const/4 v1, 0x4

    iget-object v2, p0, Llfp;->d:Ljava/lang/Integer;

    .line 167
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Llxz;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 169
    :cond_3
    iget-object v1, p0, Llfp;->e:Ljava/lang/Float;

    if-eqz v1, :cond_4

    .line 170
    const/4 v1, 0x5

    iget-object v2, p0, Llfp;->e:Ljava/lang/Float;

    .line 171
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    .line 1569
    invoke-static {v1}, Llxz;->f(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x4

    .line 171
    add-int/2addr v0, v1

    .line 173
    :cond_4
    iget-object v1, p0, Llfp;->f:Ljava/lang/Float;

    if-eqz v1, :cond_5

    .line 174
    const/4 v1, 0x6

    iget-object v2, p0, Llfp;->f:Ljava/lang/Float;

    .line 175
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    .line 2569
    invoke-static {v1}, Llxz;->f(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x4

    .line 175
    add-int/2addr v0, v1

    .line 177
    :cond_5
    iget-object v1, p0, Llfp;->g:Ljava/lang/Float;

    if-eqz v1, :cond_6

    .line 178
    const/4 v1, 0x7

    iget-object v2, p0, Llfp;->g:Ljava/lang/Float;

    .line 179
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    .line 3569
    invoke-static {v1}, Llxz;->f(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x4

    .line 179
    add-int/2addr v0, v1

    .line 181
    :cond_6
    iget-object v1, p0, Llfp;->h:Ljava/lang/Float;

    if-eqz v1, :cond_7

    .line 182
    const/16 v1, 0x8

    iget-object v2, p0, Llfp;->h:Ljava/lang/Float;

    .line 183
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    .line 4569
    invoke-static {v1}, Llxz;->f(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x4

    .line 183
    add-int/2addr v0, v1

    .line 185
    :cond_7
    iget-object v1, p0, Llfp;->i:Ljava/lang/Float;

    if-eqz v1, :cond_8

    .line 186
    const/16 v1, 0x9

    iget-object v2, p0, Llfp;->i:Ljava/lang/Float;

    .line 187
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    .line 5569
    invoke-static {v1}, Llxz;->f(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x4

    .line 187
    add-int/2addr v0, v1

    .line 189
    :cond_8
    iget-object v1, p0, Llfp;->j:Ljava/lang/Float;

    if-eqz v1, :cond_9

    .line 190
    const/16 v1, 0xa

    iget-object v2, p0, Llfp;->j:Ljava/lang/Float;

    .line 191
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    .line 6569
    invoke-static {v1}, Llxz;->f(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x4

    .line 191
    add-int/2addr v0, v1

    .line 193
    :cond_9
    iget-object v1, p0, Llfp;->k:Ljava/lang/Float;

    if-eqz v1, :cond_a

    .line 194
    const/16 v1, 0xb

    iget-object v2, p0, Llfp;->k:Ljava/lang/Float;

    .line 195
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    .line 7569
    invoke-static {v1}, Llxz;->f(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x4

    .line 195
    add-int/2addr v0, v1

    .line 197
    :cond_a
    iget-object v1, p0, Llfp;->l:Ljava/lang/Integer;

    if-eqz v1, :cond_b

    .line 198
    const/16 v1, 0xc

    iget-object v2, p0, Llfp;->l:Ljava/lang/Integer;

    .line 199
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Llxz;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 201
    :cond_b
    iget-object v1, p0, Llfp;->m:Ljava/lang/Float;

    if-eqz v1, :cond_c

    .line 202
    const/16 v1, 0xd

    iget-object v2, p0, Llfp;->m:Ljava/lang/Float;

    .line 203
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    .line 8569
    invoke-static {v1}, Llxz;->f(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x4

    .line 203
    add-int/2addr v0, v1

    .line 205
    :cond_c
    iget-object v1, p0, Llfp;->n:Ljava/lang/Float;

    if-eqz v1, :cond_d

    .line 206
    const/16 v1, 0xe

    iget-object v2, p0, Llfp;->n:Ljava/lang/Float;

    .line 207
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    .line 9569
    invoke-static {v1}, Llxz;->f(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x4

    .line 207
    add-int/2addr v0, v1

    .line 209
    :cond_d
    iget-object v1, p0, Llfp;->o:Ljava/lang/Float;

    if-eqz v1, :cond_e

    .line 210
    const/16 v1, 0xf

    iget-object v2, p0, Llfp;->o:Ljava/lang/Float;

    .line 211
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    .line 10569
    invoke-static {v1}, Llxz;->f(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x4

    .line 211
    add-int/2addr v0, v1

    .line 213
    :cond_e
    return v0
.end method
