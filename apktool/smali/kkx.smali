.class public final Lkkx;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Lkkx;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Ljava/lang/Boolean;

.field public b:Ljava/lang/Boolean;

.field public c:Ljava/lang/Boolean;

.field public d:Ljava/lang/Integer;

.field public e:Ljava/lang/Long;

.field public f:Ljava/lang/String;

.field public g:Ljava/lang/Boolean;

.field public h:Ljava/lang/Long;

.field public i:Ljava/lang/Long;

.field public j:Ljava/lang/Long;

.field public k:Ljava/lang/Integer;

.field public l:Ljava/lang/Integer;

.field public m:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 78
    invoke-direct {p0}, Llyb;-><init>()V

    .line 1083
    iput-object v0, p0, Lkkx;->a:Ljava/lang/Boolean;

    .line 1084
    iput-object v0, p0, Lkkx;->b:Ljava/lang/Boolean;

    .line 1085
    iput-object v0, p0, Lkkx;->c:Ljava/lang/Boolean;

    .line 1086
    iput-object v0, p0, Lkkx;->d:Ljava/lang/Integer;

    .line 1087
    iput-object v0, p0, Lkkx;->e:Ljava/lang/Long;

    .line 1088
    iput-object v0, p0, Lkkx;->f:Ljava/lang/String;

    .line 1089
    iput-object v0, p0, Lkkx;->g:Ljava/lang/Boolean;

    .line 1090
    iput-object v0, p0, Lkkx;->h:Ljava/lang/Long;

    .line 1091
    iput-object v0, p0, Lkkx;->i:Ljava/lang/Long;

    .line 1092
    iput-object v0, p0, Lkkx;->j:Ljava/lang/Long;

    .line 1093
    iput-object v0, p0, Lkkx;->k:Ljava/lang/Integer;

    .line 1094
    iput-object v0, p0, Lkkx;->l:Ljava/lang/Integer;

    .line 1095
    iput-object v0, p0, Lkkx;->m:Ljava/lang/Boolean;

    .line 1096
    iput-object v0, p0, Lkkx;->eD:Llyd;

    .line 1097
    const/4 v0, -0x1

    iput v0, p0, Lkkx;->eE:I

    .line 80
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 2

    .prologue
    .line 6209
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 6210
    sparse-switch v0, :sswitch_data_0

    .line 6214
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 6215
    :sswitch_0
    return-object p0

    .line 6220
    :sswitch_1
    invoke-virtual {p1}, Llxy;->i()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lkkx;->a:Ljava/lang/Boolean;

    goto :goto_0

    .line 6224
    :sswitch_2
    invoke-virtual {p1}, Llxy;->i()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lkkx;->b:Ljava/lang/Boolean;

    goto :goto_0

    .line 6228
    :sswitch_3
    invoke-virtual {p1}, Llxy;->i()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lkkx;->c:Ljava/lang/Boolean;

    goto :goto_0

    .line 6232
    :sswitch_4
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    .line 6233
    sparse-switch v0, :sswitch_data_1

    goto :goto_0

    .line 6237
    :sswitch_5
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lkkx;->d:Ljava/lang/Integer;

    goto :goto_0

    .line 6243
    :sswitch_6
    invoke-virtual {p1}, Llxy;->e()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lkkx;->e:Ljava/lang/Long;

    goto :goto_0

    .line 6247
    :sswitch_7
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lkkx;->f:Ljava/lang/String;

    goto :goto_0

    .line 6251
    :sswitch_8
    invoke-virtual {p1}, Llxy;->i()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lkkx;->g:Ljava/lang/Boolean;

    goto :goto_0

    .line 6255
    :sswitch_9
    invoke-virtual {p1}, Llxy;->e()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lkkx;->h:Ljava/lang/Long;

    goto :goto_0

    .line 6259
    :sswitch_a
    invoke-virtual {p1}, Llxy;->e()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lkkx;->i:Ljava/lang/Long;

    goto :goto_0

    .line 6263
    :sswitch_b
    invoke-virtual {p1}, Llxy;->e()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lkkx;->j:Ljava/lang/Long;

    goto :goto_0

    .line 6267
    :sswitch_c
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    .line 6268
    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    .line 6272
    :pswitch_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lkkx;->k:Ljava/lang/Integer;

    goto/16 :goto_0

    .line 6278
    :sswitch_d
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    .line 6279
    packed-switch v0, :pswitch_data_1

    goto/16 :goto_0

    .line 6283
    :pswitch_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lkkx;->l:Ljava/lang/Integer;

    goto/16 :goto_0

    .line 6289
    :sswitch_e
    invoke-virtual {p1}, Llxy;->i()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lkkx;->m:Ljava/lang/Boolean;

    goto/16 :goto_0

    .line 6210
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
        0x20 -> :sswitch_4
        0x28 -> :sswitch_6
        0x32 -> :sswitch_7
        0x38 -> :sswitch_8
        0x40 -> :sswitch_9
        0x48 -> :sswitch_a
        0x50 -> :sswitch_b
        0x58 -> :sswitch_c
        0x60 -> :sswitch_d
        0x68 -> :sswitch_e
    .end sparse-switch

    .line 6233
    :sswitch_data_1
    .sparse-switch
        0xa -> :sswitch_5
        0x14 -> :sswitch_5
        0x1e -> :sswitch_5
    .end sparse-switch

    .line 6268
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    .line 6279
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public a(Llxz;)V
    .locals 4

    .prologue
    .line 104
    iget-object v0, p0, Lkkx;->a:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 105
    const/4 v0, 0x1

    iget-object v1, p0, Lkkx;->a:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(IZ)V

    .line 107
    :cond_0
    iget-object v0, p0, Lkkx;->b:Ljava/lang/Boolean;

    if-eqz v0, :cond_1

    .line 108
    const/4 v0, 0x2

    iget-object v1, p0, Lkkx;->b:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(IZ)V

    .line 110
    :cond_1
    iget-object v0, p0, Lkkx;->c:Ljava/lang/Boolean;

    if-eqz v0, :cond_2

    .line 111
    const/4 v0, 0x3

    iget-object v1, p0, Lkkx;->c:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(IZ)V

    .line 113
    :cond_2
    iget-object v0, p0, Lkkx;->d:Ljava/lang/Integer;

    if-eqz v0, :cond_3

    .line 114
    const/4 v0, 0x4

    iget-object v1, p0, Lkkx;->d:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(II)V

    .line 116
    :cond_3
    iget-object v0, p0, Lkkx;->e:Ljava/lang/Long;

    if-eqz v0, :cond_4

    .line 117
    const/4 v0, 0x5

    iget-object v1, p0, Lkkx;->e:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Llxz;->b(IJ)V

    .line 119
    :cond_4
    iget-object v0, p0, Lkkx;->f:Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 120
    const/4 v0, 0x6

    iget-object v1, p0, Lkkx;->f:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 122
    :cond_5
    iget-object v0, p0, Lkkx;->g:Ljava/lang/Boolean;

    if-eqz v0, :cond_6

    .line 123
    const/4 v0, 0x7

    iget-object v1, p0, Lkkx;->g:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(IZ)V

    .line 125
    :cond_6
    iget-object v0, p0, Lkkx;->h:Ljava/lang/Long;

    if-eqz v0, :cond_7

    .line 126
    const/16 v0, 0x8

    iget-object v1, p0, Lkkx;->h:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Llxz;->b(IJ)V

    .line 128
    :cond_7
    iget-object v0, p0, Lkkx;->i:Ljava/lang/Long;

    if-eqz v0, :cond_8

    .line 129
    const/16 v0, 0x9

    iget-object v1, p0, Lkkx;->i:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Llxz;->b(IJ)V

    .line 131
    :cond_8
    iget-object v0, p0, Lkkx;->j:Ljava/lang/Long;

    if-eqz v0, :cond_9

    .line 132
    const/16 v0, 0xa

    iget-object v1, p0, Lkkx;->j:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Llxz;->b(IJ)V

    .line 134
    :cond_9
    iget-object v0, p0, Lkkx;->k:Ljava/lang/Integer;

    if-eqz v0, :cond_a

    .line 135
    const/16 v0, 0xb

    iget-object v1, p0, Lkkx;->k:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(II)V

    .line 137
    :cond_a
    iget-object v0, p0, Lkkx;->l:Ljava/lang/Integer;

    if-eqz v0, :cond_b

    .line 138
    const/16 v0, 0xc

    iget-object v1, p0, Lkkx;->l:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(II)V

    .line 140
    :cond_b
    iget-object v0, p0, Lkkx;->m:Ljava/lang/Boolean;

    if-eqz v0, :cond_c

    .line 141
    const/16 v0, 0xd

    iget-object v1, p0, Lkkx;->m:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(IZ)V

    .line 143
    :cond_c
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 144
    return-void
.end method

.method protected b()I
    .locals 4

    .prologue
    .line 148
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 149
    iget-object v1, p0, Lkkx;->a:Ljava/lang/Boolean;

    if-eqz v1, :cond_0

    .line 150
    const/4 v1, 0x1

    iget-object v2, p0, Lkkx;->a:Ljava/lang/Boolean;

    .line 151
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 1620
    invoke-static {v1}, Llxz;->f(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 151
    add-int/2addr v0, v1

    .line 153
    :cond_0
    iget-object v1, p0, Lkkx;->b:Ljava/lang/Boolean;

    if-eqz v1, :cond_1

    .line 154
    const/4 v1, 0x2

    iget-object v2, p0, Lkkx;->b:Ljava/lang/Boolean;

    .line 155
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 2620
    invoke-static {v1}, Llxz;->f(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 155
    add-int/2addr v0, v1

    .line 157
    :cond_1
    iget-object v1, p0, Lkkx;->c:Ljava/lang/Boolean;

    if-eqz v1, :cond_2

    .line 158
    const/4 v1, 0x3

    iget-object v2, p0, Lkkx;->c:Ljava/lang/Boolean;

    .line 159
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 3620
    invoke-static {v1}, Llxz;->f(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 159
    add-int/2addr v0, v1

    .line 161
    :cond_2
    iget-object v1, p0, Lkkx;->d:Ljava/lang/Integer;

    if-eqz v1, :cond_3

    .line 162
    const/4 v1, 0x4

    iget-object v2, p0, Lkkx;->d:Ljava/lang/Integer;

    .line 163
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Llxz;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 165
    :cond_3
    iget-object v1, p0, Lkkx;->e:Ljava/lang/Long;

    if-eqz v1, :cond_4

    .line 166
    const/4 v1, 0x5

    iget-object v2, p0, Lkkx;->e:Ljava/lang/Long;

    .line 167
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Llxz;->e(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 169
    :cond_4
    iget-object v1, p0, Lkkx;->f:Ljava/lang/String;

    if-eqz v1, :cond_5

    .line 170
    const/4 v1, 0x6

    iget-object v2, p0, Lkkx;->f:Ljava/lang/String;

    .line 171
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 173
    :cond_5
    iget-object v1, p0, Lkkx;->g:Ljava/lang/Boolean;

    if-eqz v1, :cond_6

    .line 174
    const/4 v1, 0x7

    iget-object v2, p0, Lkkx;->g:Ljava/lang/Boolean;

    .line 175
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 4620
    invoke-static {v1}, Llxz;->f(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 175
    add-int/2addr v0, v1

    .line 177
    :cond_6
    iget-object v1, p0, Lkkx;->h:Ljava/lang/Long;

    if-eqz v1, :cond_7

    .line 178
    const/16 v1, 0x8

    iget-object v2, p0, Lkkx;->h:Ljava/lang/Long;

    .line 179
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Llxz;->e(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 181
    :cond_7
    iget-object v1, p0, Lkkx;->i:Ljava/lang/Long;

    if-eqz v1, :cond_8

    .line 182
    const/16 v1, 0x9

    iget-object v2, p0, Lkkx;->i:Ljava/lang/Long;

    .line 183
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Llxz;->e(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 185
    :cond_8
    iget-object v1, p0, Lkkx;->j:Ljava/lang/Long;

    if-eqz v1, :cond_9

    .line 186
    const/16 v1, 0xa

    iget-object v2, p0, Lkkx;->j:Ljava/lang/Long;

    .line 187
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Llxz;->e(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 189
    :cond_9
    iget-object v1, p0, Lkkx;->k:Ljava/lang/Integer;

    if-eqz v1, :cond_a

    .line 190
    const/16 v1, 0xb

    iget-object v2, p0, Lkkx;->k:Ljava/lang/Integer;

    .line 191
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Llxz;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 193
    :cond_a
    iget-object v1, p0, Lkkx;->l:Ljava/lang/Integer;

    if-eqz v1, :cond_b

    .line 194
    const/16 v1, 0xc

    iget-object v2, p0, Lkkx;->l:Ljava/lang/Integer;

    .line 195
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Llxz;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 197
    :cond_b
    iget-object v1, p0, Lkkx;->m:Ljava/lang/Boolean;

    if-eqz v1, :cond_c

    .line 198
    const/16 v1, 0xd

    iget-object v2, p0, Lkkx;->m:Ljava/lang/Boolean;

    .line 199
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 5620
    invoke-static {v1}, Llxz;->f(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 199
    add-int/2addr v0, v1

    .line 201
    :cond_c
    return v0
.end method
