.class public final Llfn;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Llfn;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile p:[Llfn;


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

    .line 70
    invoke-direct {p0}, Llyb;-><init>()V

    .line 71
    iput-object v0, p0, Llfn;->a:Ljava/lang/Integer;

    .line 72
    iput-object v0, p0, Llfn;->b:Ljava/lang/Integer;

    .line 73
    iput-object v0, p0, Llfn;->c:Ljava/lang/Integer;

    .line 74
    iput-object v0, p0, Llfn;->d:Ljava/lang/Integer;

    .line 75
    iput-object v0, p0, Llfn;->e:Ljava/lang/Float;

    .line 76
    iput-object v0, p0, Llfn;->f:Ljava/lang/Float;

    .line 77
    iput-object v0, p0, Llfn;->g:Ljava/lang/Float;

    .line 78
    iput-object v0, p0, Llfn;->h:Ljava/lang/Float;

    .line 79
    iput-object v0, p0, Llfn;->i:Ljava/lang/Float;

    .line 80
    iput-object v0, p0, Llfn;->j:Ljava/lang/Float;

    .line 81
    iput-object v0, p0, Llfn;->k:Ljava/lang/Float;

    .line 82
    iput-object v0, p0, Llfn;->l:Ljava/lang/Integer;

    .line 83
    iput-object v0, p0, Llfn;->m:Ljava/lang/Float;

    .line 84
    iput-object v0, p0, Llfn;->n:Ljava/lang/Float;

    .line 85
    iput-object v0, p0, Llfn;->o:Ljava/lang/Float;

    .line 86
    iput-object v0, p0, Llfn;->eD:Llyd;

    .line 87
    const/4 v0, -0x1

    iput v0, p0, Llfn;->eE:I

    .line 88
    return-void
.end method

.method public static d()[Llfn;
    .locals 2

    .prologue
    .line 12
    sget-object v0, Llfn;->p:[Llfn;

    if-nez v0, :cond_1

    .line 13
    sget-object v1, Llyf;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 15
    :try_start_0
    sget-object v0, Llfn;->p:[Llfn;

    if-nez v0, :cond_0

    .line 16
    const/4 v0, 0x0

    new-array v0, v0, [Llfn;

    sput-object v0, Llfn;->p:[Llfn;

    .line 18
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    :cond_1
    sget-object v0, Llfn;->p:[Llfn;

    return-object v0

    .line 18
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
    .line 11212
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 11213
    sparse-switch v0, :sswitch_data_0

    .line 11217
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 11218
    :sswitch_0
    return-object p0

    .line 11223
    :sswitch_1
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Llfn;->a:Ljava/lang/Integer;

    goto :goto_0

    .line 11227
    :sswitch_2
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Llfn;->b:Ljava/lang/Integer;

    goto :goto_0

    .line 11231
    :sswitch_3
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Llfn;->c:Ljava/lang/Integer;

    goto :goto_0

    .line 11235
    :sswitch_4
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Llfn;->d:Ljava/lang/Integer;

    goto :goto_0

    .line 11239
    :sswitch_5
    invoke-virtual {p1}, Llxy;->c()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Llfn;->e:Ljava/lang/Float;

    goto :goto_0

    .line 11243
    :sswitch_6
    invoke-virtual {p1}, Llxy;->c()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Llfn;->f:Ljava/lang/Float;

    goto :goto_0

    .line 11247
    :sswitch_7
    invoke-virtual {p1}, Llxy;->c()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Llfn;->g:Ljava/lang/Float;

    goto :goto_0

    .line 11251
    :sswitch_8
    invoke-virtual {p1}, Llxy;->c()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Llfn;->h:Ljava/lang/Float;

    goto :goto_0

    .line 11255
    :sswitch_9
    invoke-virtual {p1}, Llxy;->c()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Llfn;->i:Ljava/lang/Float;

    goto :goto_0

    .line 11259
    :sswitch_a
    invoke-virtual {p1}, Llxy;->c()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Llfn;->j:Ljava/lang/Float;

    goto :goto_0

    .line 11263
    :sswitch_b
    invoke-virtual {p1}, Llxy;->c()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Llfn;->k:Ljava/lang/Float;

    goto/16 :goto_0

    .line 11267
    :sswitch_c
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Llfn;->l:Ljava/lang/Integer;

    goto/16 :goto_0

    .line 11271
    :sswitch_d
    invoke-virtual {p1}, Llxy;->c()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Llfn;->m:Ljava/lang/Float;

    goto/16 :goto_0

    .line 11275
    :sswitch_e
    invoke-virtual {p1}, Llxy;->c()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Llfn;->n:Ljava/lang/Float;

    goto/16 :goto_0

    .line 11279
    :sswitch_f
    invoke-virtual {p1}, Llxy;->c()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Llfn;->o:Ljava/lang/Float;

    goto/16 :goto_0

    .line 11213
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
    .line 93
    iget-object v0, p0, Llfn;->a:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 94
    const/4 v0, 0x1

    iget-object v1, p0, Llfn;->a:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(II)V

    .line 96
    :cond_0
    iget-object v0, p0, Llfn;->b:Ljava/lang/Integer;

    if-eqz v0, :cond_1

    .line 97
    const/4 v0, 0x2

    iget-object v1, p0, Llfn;->b:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(II)V

    .line 99
    :cond_1
    iget-object v0, p0, Llfn;->c:Ljava/lang/Integer;

    if-eqz v0, :cond_2

    .line 100
    const/4 v0, 0x3

    iget-object v1, p0, Llfn;->c:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(II)V

    .line 102
    :cond_2
    iget-object v0, p0, Llfn;->d:Ljava/lang/Integer;

    if-eqz v0, :cond_3

    .line 103
    const/4 v0, 0x4

    iget-object v1, p0, Llfn;->d:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(II)V

    .line 105
    :cond_3
    iget-object v0, p0, Llfn;->e:Ljava/lang/Float;

    if-eqz v0, :cond_4

    .line 106
    const/4 v0, 0x5

    iget-object v1, p0, Llfn;->e:Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(IF)V

    .line 108
    :cond_4
    iget-object v0, p0, Llfn;->f:Ljava/lang/Float;

    if-eqz v0, :cond_5

    .line 109
    const/4 v0, 0x6

    iget-object v1, p0, Llfn;->f:Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(IF)V

    .line 111
    :cond_5
    iget-object v0, p0, Llfn;->g:Ljava/lang/Float;

    if-eqz v0, :cond_6

    .line 112
    const/4 v0, 0x7

    iget-object v1, p0, Llfn;->g:Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(IF)V

    .line 114
    :cond_6
    iget-object v0, p0, Llfn;->h:Ljava/lang/Float;

    if-eqz v0, :cond_7

    .line 115
    const/16 v0, 0x8

    iget-object v1, p0, Llfn;->h:Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(IF)V

    .line 117
    :cond_7
    iget-object v0, p0, Llfn;->i:Ljava/lang/Float;

    if-eqz v0, :cond_8

    .line 118
    const/16 v0, 0x9

    iget-object v1, p0, Llfn;->i:Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(IF)V

    .line 120
    :cond_8
    iget-object v0, p0, Llfn;->j:Ljava/lang/Float;

    if-eqz v0, :cond_9

    .line 121
    const/16 v0, 0xa

    iget-object v1, p0, Llfn;->j:Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(IF)V

    .line 123
    :cond_9
    iget-object v0, p0, Llfn;->k:Ljava/lang/Float;

    if-eqz v0, :cond_a

    .line 124
    const/16 v0, 0xb

    iget-object v1, p0, Llfn;->k:Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(IF)V

    .line 126
    :cond_a
    iget-object v0, p0, Llfn;->l:Ljava/lang/Integer;

    if-eqz v0, :cond_b

    .line 127
    const/16 v0, 0xc

    iget-object v1, p0, Llfn;->l:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(II)V

    .line 129
    :cond_b
    iget-object v0, p0, Llfn;->m:Ljava/lang/Float;

    if-eqz v0, :cond_c

    .line 130
    const/16 v0, 0xd

    iget-object v1, p0, Llfn;->m:Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(IF)V

    .line 132
    :cond_c
    iget-object v0, p0, Llfn;->n:Ljava/lang/Float;

    if-eqz v0, :cond_d

    .line 133
    const/16 v0, 0xe

    iget-object v1, p0, Llfn;->n:Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(IF)V

    .line 135
    :cond_d
    iget-object v0, p0, Llfn;->o:Ljava/lang/Float;

    if-eqz v0, :cond_e

    .line 136
    const/16 v0, 0xf

    iget-object v1, p0, Llfn;->o:Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(IF)V

    .line 138
    :cond_e
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 139
    return-void
.end method

.method protected b()I
    .locals 3

    .prologue
    .line 143
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 144
    iget-object v1, p0, Llfn;->a:Ljava/lang/Integer;

    if-eqz v1, :cond_0

    .line 145
    const/4 v1, 0x1

    iget-object v2, p0, Llfn;->a:Ljava/lang/Integer;

    .line 146
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Llxz;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 148
    :cond_0
    iget-object v1, p0, Llfn;->b:Ljava/lang/Integer;

    if-eqz v1, :cond_1

    .line 149
    const/4 v1, 0x2

    iget-object v2, p0, Llfn;->b:Ljava/lang/Integer;

    .line 150
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Llxz;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 152
    :cond_1
    iget-object v1, p0, Llfn;->c:Ljava/lang/Integer;

    if-eqz v1, :cond_2

    .line 153
    const/4 v1, 0x3

    iget-object v2, p0, Llfn;->c:Ljava/lang/Integer;

    .line 154
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Llxz;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 156
    :cond_2
    iget-object v1, p0, Llfn;->d:Ljava/lang/Integer;

    if-eqz v1, :cond_3

    .line 157
    const/4 v1, 0x4

    iget-object v2, p0, Llfn;->d:Ljava/lang/Integer;

    .line 158
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Llxz;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 160
    :cond_3
    iget-object v1, p0, Llfn;->e:Ljava/lang/Float;

    if-eqz v1, :cond_4

    .line 161
    const/4 v1, 0x5

    iget-object v2, p0, Llfn;->e:Ljava/lang/Float;

    .line 162
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    .line 1569
    invoke-static {v1}, Llxz;->f(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x4

    .line 162
    add-int/2addr v0, v1

    .line 164
    :cond_4
    iget-object v1, p0, Llfn;->f:Ljava/lang/Float;

    if-eqz v1, :cond_5

    .line 165
    const/4 v1, 0x6

    iget-object v2, p0, Llfn;->f:Ljava/lang/Float;

    .line 166
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    .line 2569
    invoke-static {v1}, Llxz;->f(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x4

    .line 166
    add-int/2addr v0, v1

    .line 168
    :cond_5
    iget-object v1, p0, Llfn;->g:Ljava/lang/Float;

    if-eqz v1, :cond_6

    .line 169
    const/4 v1, 0x7

    iget-object v2, p0, Llfn;->g:Ljava/lang/Float;

    .line 170
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    .line 3569
    invoke-static {v1}, Llxz;->f(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x4

    .line 170
    add-int/2addr v0, v1

    .line 172
    :cond_6
    iget-object v1, p0, Llfn;->h:Ljava/lang/Float;

    if-eqz v1, :cond_7

    .line 173
    const/16 v1, 0x8

    iget-object v2, p0, Llfn;->h:Ljava/lang/Float;

    .line 174
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    .line 4569
    invoke-static {v1}, Llxz;->f(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x4

    .line 174
    add-int/2addr v0, v1

    .line 176
    :cond_7
    iget-object v1, p0, Llfn;->i:Ljava/lang/Float;

    if-eqz v1, :cond_8

    .line 177
    const/16 v1, 0x9

    iget-object v2, p0, Llfn;->i:Ljava/lang/Float;

    .line 178
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    .line 5569
    invoke-static {v1}, Llxz;->f(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x4

    .line 178
    add-int/2addr v0, v1

    .line 180
    :cond_8
    iget-object v1, p0, Llfn;->j:Ljava/lang/Float;

    if-eqz v1, :cond_9

    .line 181
    const/16 v1, 0xa

    iget-object v2, p0, Llfn;->j:Ljava/lang/Float;

    .line 182
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    .line 6569
    invoke-static {v1}, Llxz;->f(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x4

    .line 182
    add-int/2addr v0, v1

    .line 184
    :cond_9
    iget-object v1, p0, Llfn;->k:Ljava/lang/Float;

    if-eqz v1, :cond_a

    .line 185
    const/16 v1, 0xb

    iget-object v2, p0, Llfn;->k:Ljava/lang/Float;

    .line 186
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    .line 7569
    invoke-static {v1}, Llxz;->f(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x4

    .line 186
    add-int/2addr v0, v1

    .line 188
    :cond_a
    iget-object v1, p0, Llfn;->l:Ljava/lang/Integer;

    if-eqz v1, :cond_b

    .line 189
    const/16 v1, 0xc

    iget-object v2, p0, Llfn;->l:Ljava/lang/Integer;

    .line 190
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Llxz;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 192
    :cond_b
    iget-object v1, p0, Llfn;->m:Ljava/lang/Float;

    if-eqz v1, :cond_c

    .line 193
    const/16 v1, 0xd

    iget-object v2, p0, Llfn;->m:Ljava/lang/Float;

    .line 194
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    .line 8569
    invoke-static {v1}, Llxz;->f(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x4

    .line 194
    add-int/2addr v0, v1

    .line 196
    :cond_c
    iget-object v1, p0, Llfn;->n:Ljava/lang/Float;

    if-eqz v1, :cond_d

    .line 197
    const/16 v1, 0xe

    iget-object v2, p0, Llfn;->n:Ljava/lang/Float;

    .line 198
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    .line 9569
    invoke-static {v1}, Llxz;->f(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x4

    .line 198
    add-int/2addr v0, v1

    .line 200
    :cond_d
    iget-object v1, p0, Llfn;->o:Ljava/lang/Float;

    if-eqz v1, :cond_e

    .line 201
    const/16 v1, 0xf

    iget-object v2, p0, Llfn;->o:Ljava/lang/Float;

    .line 202
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    .line 10569
    invoke-static {v1}, Llxz;->f(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x4

    .line 202
    add-int/2addr v0, v1

    .line 204
    :cond_e
    return v0
.end method
