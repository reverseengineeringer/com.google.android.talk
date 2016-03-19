.class public final Lmbq;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Lmbq;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile l:[Lmbq;


# instance fields
.field public a:Ljava/lang/Long;

.field public b:I

.field public c:Ljava/lang/String;

.field public d:[B

.field public e:[B

.field public f:Lmcb;

.field public g:Lmbp;

.field public h:[B

.field public i:Ljava/lang/Integer;

.field public j:[B

.field public k:[B


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 67
    invoke-direct {p0}, Llyb;-><init>()V

    .line 68
    iput-object v1, p0, Lmbq;->a:Ljava/lang/Long;

    .line 69
    const/high16 v0, -0x80000000

    iput v0, p0, Lmbq;->b:I

    .line 70
    iput-object v1, p0, Lmbq;->c:Ljava/lang/String;

    .line 71
    iput-object v1, p0, Lmbq;->d:[B

    .line 72
    iput-object v1, p0, Lmbq;->e:[B

    .line 73
    iput-object v1, p0, Lmbq;->f:Lmcb;

    .line 74
    iput-object v1, p0, Lmbq;->g:Lmbp;

    .line 75
    iput-object v1, p0, Lmbq;->h:[B

    .line 76
    iput-object v1, p0, Lmbq;->i:Ljava/lang/Integer;

    .line 77
    iput-object v1, p0, Lmbq;->j:[B

    .line 78
    iput-object v1, p0, Lmbq;->k:[B

    .line 79
    iput-object v1, p0, Lmbq;->eD:Llyd;

    .line 80
    const/4 v0, -0x1

    iput v0, p0, Lmbq;->eE:I

    .line 81
    return-void
.end method

.method public static d()[Lmbq;
    .locals 2

    .prologue
    .line 21
    sget-object v0, Lmbq;->l:[Lmbq;

    if-nez v0, :cond_1

    .line 22
    sget-object v1, Llyf;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 24
    :try_start_0
    sget-object v0, Lmbq;->l:[Lmbq;

    if-nez v0, :cond_0

    .line 25
    const/4 v0, 0x0

    new-array v0, v0, [Lmbq;

    sput-object v0, Lmbq;->l:[Lmbq;

    .line 27
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    :cond_1
    sget-object v0, Lmbq;->l:[Lmbq;

    return-object v0

    .line 27
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
    .locals 2

    .prologue
    .line 2177
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 2178
    sparse-switch v0, :sswitch_data_0

    .line 2182
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2183
    :sswitch_0
    return-object p0

    .line 2188
    :sswitch_1
    invoke-virtual {p1}, Llxy;->e()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lmbq;->a:Ljava/lang/Long;

    goto :goto_0

    .line 2192
    :sswitch_2
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    .line 2193
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 2199
    :pswitch_0
    iput v0, p0, Lmbq;->b:I

    goto :goto_0

    .line 2205
    :sswitch_3
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmbq;->c:Ljava/lang/String;

    goto :goto_0

    .line 2209
    :sswitch_4
    invoke-virtual {p1}, Llxy;->k()[B

    move-result-object v0

    iput-object v0, p0, Lmbq;->d:[B

    goto :goto_0

    .line 2213
    :sswitch_5
    invoke-virtual {p1}, Llxy;->k()[B

    move-result-object v0

    iput-object v0, p0, Lmbq;->e:[B

    goto :goto_0

    .line 2217
    :sswitch_6
    iget-object v0, p0, Lmbq;->f:Lmcb;

    if-nez v0, :cond_1

    .line 2218
    new-instance v0, Lmcb;

    invoke-direct {v0}, Lmcb;-><init>()V

    iput-object v0, p0, Lmbq;->f:Lmcb;

    .line 2220
    :cond_1
    iget-object v0, p0, Lmbq;->f:Lmcb;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 2224
    :sswitch_7
    iget-object v0, p0, Lmbq;->g:Lmbp;

    if-nez v0, :cond_2

    .line 2225
    new-instance v0, Lmbp;

    invoke-direct {v0}, Lmbp;-><init>()V

    iput-object v0, p0, Lmbq;->g:Lmbp;

    .line 2227
    :cond_2
    iget-object v0, p0, Lmbq;->g:Lmbp;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 2231
    :sswitch_8
    invoke-virtual {p1}, Llxy;->k()[B

    move-result-object v0

    iput-object v0, p0, Lmbq;->h:[B

    goto :goto_0

    .line 2235
    :sswitch_9
    invoke-virtual {p1}, Llxy;->h()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lmbq;->i:Ljava/lang/Integer;

    goto :goto_0

    .line 2239
    :sswitch_a
    invoke-virtual {p1}, Llxy;->k()[B

    move-result-object v0

    iput-object v0, p0, Lmbq;->j:[B

    goto :goto_0

    .line 2243
    :sswitch_b
    invoke-virtual {p1}, Llxy;->k()[B

    move-result-object v0

    iput-object v0, p0, Lmbq;->k:[B

    goto :goto_0

    .line 2178
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
        0x2a -> :sswitch_5
        0x32 -> :sswitch_6
        0x3a -> :sswitch_7
        0x42 -> :sswitch_8
        0x4d -> :sswitch_9
        0x52 -> :sswitch_a
        0x5a -> :sswitch_b
    .end sparse-switch

    .line 2193
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public a(Llxz;)V
    .locals 4

    .prologue
    .line 86
    iget-object v0, p0, Lmbq;->a:Ljava/lang/Long;

    if-eqz v0, :cond_0

    .line 87
    const/4 v0, 0x1

    iget-object v1, p0, Lmbq;->a:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Llxz;->b(IJ)V

    .line 89
    :cond_0
    iget v0, p0, Lmbq;->b:I

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_1

    .line 90
    const/4 v0, 0x2

    iget v1, p0, Lmbq;->b:I

    invoke-virtual {p1, v0, v1}, Llxz;->a(II)V

    .line 92
    :cond_1
    iget-object v0, p0, Lmbq;->c:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 93
    const/4 v0, 0x3

    iget-object v1, p0, Lmbq;->c:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 95
    :cond_2
    iget-object v0, p0, Lmbq;->d:[B

    if-eqz v0, :cond_3

    .line 96
    const/4 v0, 0x4

    iget-object v1, p0, Lmbq;->d:[B

    invoke-virtual {p1, v0, v1}, Llxz;->a(I[B)V

    .line 98
    :cond_3
    iget-object v0, p0, Lmbq;->e:[B

    if-eqz v0, :cond_4

    .line 99
    const/4 v0, 0x5

    iget-object v1, p0, Lmbq;->e:[B

    invoke-virtual {p1, v0, v1}, Llxz;->a(I[B)V

    .line 101
    :cond_4
    iget-object v0, p0, Lmbq;->f:Lmcb;

    if-eqz v0, :cond_5

    .line 102
    const/4 v0, 0x6

    iget-object v1, p0, Lmbq;->f:Lmcb;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 104
    :cond_5
    iget-object v0, p0, Lmbq;->g:Lmbp;

    if-eqz v0, :cond_6

    .line 105
    const/4 v0, 0x7

    iget-object v1, p0, Lmbq;->g:Lmbp;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 107
    :cond_6
    iget-object v0, p0, Lmbq;->h:[B

    if-eqz v0, :cond_7

    .line 108
    const/16 v0, 0x8

    iget-object v1, p0, Lmbq;->h:[B

    invoke-virtual {p1, v0, v1}, Llxz;->a(I[B)V

    .line 110
    :cond_7
    iget-object v0, p0, Lmbq;->i:Ljava/lang/Integer;

    if-eqz v0, :cond_8

    .line 111
    const/16 v0, 0x9

    iget-object v1, p0, Lmbq;->i:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->b(II)V

    .line 113
    :cond_8
    iget-object v0, p0, Lmbq;->j:[B

    if-eqz v0, :cond_9

    .line 114
    const/16 v0, 0xa

    iget-object v1, p0, Lmbq;->j:[B

    invoke-virtual {p1, v0, v1}, Llxz;->a(I[B)V

    .line 116
    :cond_9
    iget-object v0, p0, Lmbq;->k:[B

    if-eqz v0, :cond_a

    .line 117
    const/16 v0, 0xb

    iget-object v1, p0, Lmbq;->k:[B

    invoke-virtual {p1, v0, v1}, Llxz;->a(I[B)V

    .line 119
    :cond_a
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 120
    return-void
.end method

.method protected b()I
    .locals 4

    .prologue
    .line 124
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 125
    iget-object v1, p0, Lmbq;->a:Ljava/lang/Long;

    if-eqz v1, :cond_0

    .line 126
    const/4 v1, 0x1

    iget-object v2, p0, Lmbq;->a:Ljava/lang/Long;

    .line 127
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Llxz;->e(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 129
    :cond_0
    iget v1, p0, Lmbq;->b:I

    const/high16 v2, -0x80000000

    if-eq v1, v2, :cond_1

    .line 130
    const/4 v1, 0x2

    iget v2, p0, Lmbq;->b:I

    .line 131
    invoke-static {v1, v2}, Llxz;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 133
    :cond_1
    iget-object v1, p0, Lmbq;->c:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 134
    const/4 v1, 0x3

    iget-object v2, p0, Lmbq;->c:Ljava/lang/String;

    .line 135
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 137
    :cond_2
    iget-object v1, p0, Lmbq;->d:[B

    if-eqz v1, :cond_3

    .line 138
    const/4 v1, 0x4

    iget-object v2, p0, Lmbq;->d:[B

    .line 139
    invoke-static {v1, v2}, Llxz;->b(I[B)I

    move-result v1

    add-int/2addr v0, v1

    .line 141
    :cond_3
    iget-object v1, p0, Lmbq;->e:[B

    if-eqz v1, :cond_4

    .line 142
    const/4 v1, 0x5

    iget-object v2, p0, Lmbq;->e:[B

    .line 143
    invoke-static {v1, v2}, Llxz;->b(I[B)I

    move-result v1

    add-int/2addr v0, v1

    .line 145
    :cond_4
    iget-object v1, p0, Lmbq;->f:Lmcb;

    if-eqz v1, :cond_5

    .line 146
    const/4 v1, 0x6

    iget-object v2, p0, Lmbq;->f:Lmcb;

    .line 147
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 149
    :cond_5
    iget-object v1, p0, Lmbq;->g:Lmbp;

    if-eqz v1, :cond_6

    .line 150
    const/4 v1, 0x7

    iget-object v2, p0, Lmbq;->g:Lmbp;

    .line 151
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 153
    :cond_6
    iget-object v1, p0, Lmbq;->h:[B

    if-eqz v1, :cond_7

    .line 154
    const/16 v1, 0x8

    iget-object v2, p0, Lmbq;->h:[B

    .line 155
    invoke-static {v1, v2}, Llxz;->b(I[B)I

    move-result v1

    add-int/2addr v0, v1

    .line 157
    :cond_7
    iget-object v1, p0, Lmbq;->i:Ljava/lang/Integer;

    if-eqz v1, :cond_8

    .line 158
    const/16 v1, 0x9

    iget-object v2, p0, Lmbq;->i:Ljava/lang/Integer;

    .line 159
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 1611
    invoke-static {v1}, Llxz;->f(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x4

    .line 159
    add-int/2addr v0, v1

    .line 161
    :cond_8
    iget-object v1, p0, Lmbq;->j:[B

    if-eqz v1, :cond_9

    .line 162
    const/16 v1, 0xa

    iget-object v2, p0, Lmbq;->j:[B

    .line 163
    invoke-static {v1, v2}, Llxz;->b(I[B)I

    move-result v1

    add-int/2addr v0, v1

    .line 165
    :cond_9
    iget-object v1, p0, Lmbq;->k:[B

    if-eqz v1, :cond_a

    .line 166
    const/16 v1, 0xb

    iget-object v2, p0, Lmbq;->k:[B

    .line 167
    invoke-static {v1, v2}, Llxz;->b(I[B)I

    move-result v1

    add-int/2addr v0, v1

    .line 169
    :cond_a
    return v0
.end method
