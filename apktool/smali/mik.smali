.class public final Lmik;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Lmik;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Lmic;

.field public b:Ljava/lang/Long;

.field public c:Ljava/lang/String;

.field public d:Lmil;

.field public e:Lmht;

.field public f:Lmie;

.field public g:Lmhw;

.field public h:Lmig;

.field public i:Lmif;

.field public j:Lmhv;

.field public k:Lmhx;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 58
    invoke-direct {p0}, Llyb;-><init>()V

    .line 59
    iput-object v0, p0, Lmik;->a:Lmic;

    .line 60
    iput-object v0, p0, Lmik;->b:Ljava/lang/Long;

    .line 61
    iput-object v0, p0, Lmik;->c:Ljava/lang/String;

    .line 62
    iput-object v0, p0, Lmik;->d:Lmil;

    .line 63
    iput-object v0, p0, Lmik;->e:Lmht;

    .line 64
    iput-object v0, p0, Lmik;->f:Lmie;

    .line 65
    iput-object v0, p0, Lmik;->g:Lmhw;

    .line 66
    iput-object v0, p0, Lmik;->h:Lmig;

    .line 67
    iput-object v0, p0, Lmik;->i:Lmif;

    .line 68
    iput-object v0, p0, Lmik;->j:Lmhv;

    .line 69
    iput-object v0, p0, Lmik;->k:Lmhx;

    .line 70
    iput-object v0, p0, Lmik;->eD:Llyd;

    .line 71
    const/4 v0, -0x1

    iput v0, p0, Lmik;->eE:I

    .line 72
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 2

    .prologue
    .line 2168
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 2169
    sparse-switch v0, :sswitch_data_0

    .line 2173
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2174
    :sswitch_0
    return-object p0

    .line 2179
    :sswitch_1
    iget-object v0, p0, Lmik;->a:Lmic;

    if-nez v0, :cond_1

    .line 2180
    new-instance v0, Lmic;

    invoke-direct {v0}, Lmic;-><init>()V

    iput-object v0, p0, Lmik;->a:Lmic;

    .line 2182
    :cond_1
    iget-object v0, p0, Lmik;->a:Lmic;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 2186
    :sswitch_2
    invoke-virtual {p1}, Llxy;->g()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lmik;->b:Ljava/lang/Long;

    goto :goto_0

    .line 2190
    :sswitch_3
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmik;->c:Ljava/lang/String;

    goto :goto_0

    .line 2194
    :sswitch_4
    iget-object v0, p0, Lmik;->d:Lmil;

    if-nez v0, :cond_2

    .line 2195
    new-instance v0, Lmil;

    invoke-direct {v0}, Lmil;-><init>()V

    iput-object v0, p0, Lmik;->d:Lmil;

    .line 2197
    :cond_2
    iget-object v0, p0, Lmik;->d:Lmil;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 2201
    :sswitch_5
    iget-object v0, p0, Lmik;->e:Lmht;

    if-nez v0, :cond_3

    .line 2202
    new-instance v0, Lmht;

    invoke-direct {v0}, Lmht;-><init>()V

    iput-object v0, p0, Lmik;->e:Lmht;

    .line 2204
    :cond_3
    iget-object v0, p0, Lmik;->e:Lmht;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 2208
    :sswitch_6
    iget-object v0, p0, Lmik;->f:Lmie;

    if-nez v0, :cond_4

    .line 2209
    new-instance v0, Lmie;

    invoke-direct {v0}, Lmie;-><init>()V

    iput-object v0, p0, Lmik;->f:Lmie;

    .line 2211
    :cond_4
    iget-object v0, p0, Lmik;->f:Lmie;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 2215
    :sswitch_7
    iget-object v0, p0, Lmik;->g:Lmhw;

    if-nez v0, :cond_5

    .line 2216
    new-instance v0, Lmhw;

    invoke-direct {v0}, Lmhw;-><init>()V

    iput-object v0, p0, Lmik;->g:Lmhw;

    .line 2218
    :cond_5
    iget-object v0, p0, Lmik;->g:Lmhw;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 2222
    :sswitch_8
    iget-object v0, p0, Lmik;->h:Lmig;

    if-nez v0, :cond_6

    .line 2223
    new-instance v0, Lmig;

    invoke-direct {v0}, Lmig;-><init>()V

    iput-object v0, p0, Lmik;->h:Lmig;

    .line 2225
    :cond_6
    iget-object v0, p0, Lmik;->h:Lmig;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto/16 :goto_0

    .line 2229
    :sswitch_9
    iget-object v0, p0, Lmik;->i:Lmif;

    if-nez v0, :cond_7

    .line 2230
    new-instance v0, Lmif;

    invoke-direct {v0}, Lmif;-><init>()V

    iput-object v0, p0, Lmik;->i:Lmif;

    .line 2232
    :cond_7
    iget-object v0, p0, Lmik;->i:Lmif;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto/16 :goto_0

    .line 2236
    :sswitch_a
    iget-object v0, p0, Lmik;->j:Lmhv;

    if-nez v0, :cond_8

    .line 2237
    new-instance v0, Lmhv;

    invoke-direct {v0}, Lmhv;-><init>()V

    iput-object v0, p0, Lmik;->j:Lmhv;

    .line 2239
    :cond_8
    iget-object v0, p0, Lmik;->j:Lmhv;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto/16 :goto_0

    .line 2243
    :sswitch_b
    iget-object v0, p0, Lmik;->k:Lmhx;

    if-nez v0, :cond_9

    .line 2244
    new-instance v0, Lmhx;

    invoke-direct {v0}, Lmhx;-><init>()V

    iput-object v0, p0, Lmik;->k:Lmhx;

    .line 2246
    :cond_9
    iget-object v0, p0, Lmik;->k:Lmhx;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto/16 :goto_0

    .line 2169
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x11 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
        0x2a -> :sswitch_5
        0x32 -> :sswitch_6
        0x3a -> :sswitch_7
        0x42 -> :sswitch_8
        0x4a -> :sswitch_9
        0x52 -> :sswitch_a
        0x5a -> :sswitch_b
    .end sparse-switch
.end method

.method public a(Llxz;)V
    .locals 4

    .prologue
    .line 77
    iget-object v0, p0, Lmik;->a:Lmic;

    if-eqz v0, :cond_0

    .line 78
    const/4 v0, 0x1

    iget-object v1, p0, Lmik;->a:Lmic;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 80
    :cond_0
    iget-object v0, p0, Lmik;->b:Ljava/lang/Long;

    if-eqz v0, :cond_1

    .line 81
    const/4 v0, 0x2

    iget-object v1, p0, Lmik;->b:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Llxz;->c(IJ)V

    .line 83
    :cond_1
    iget-object v0, p0, Lmik;->c:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 84
    const/4 v0, 0x3

    iget-object v1, p0, Lmik;->c:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 86
    :cond_2
    iget-object v0, p0, Lmik;->d:Lmil;

    if-eqz v0, :cond_3

    .line 87
    const/4 v0, 0x4

    iget-object v1, p0, Lmik;->d:Lmil;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 89
    :cond_3
    iget-object v0, p0, Lmik;->e:Lmht;

    if-eqz v0, :cond_4

    .line 90
    const/4 v0, 0x5

    iget-object v1, p0, Lmik;->e:Lmht;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 92
    :cond_4
    iget-object v0, p0, Lmik;->f:Lmie;

    if-eqz v0, :cond_5

    .line 93
    const/4 v0, 0x6

    iget-object v1, p0, Lmik;->f:Lmie;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 95
    :cond_5
    iget-object v0, p0, Lmik;->g:Lmhw;

    if-eqz v0, :cond_6

    .line 96
    const/4 v0, 0x7

    iget-object v1, p0, Lmik;->g:Lmhw;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 98
    :cond_6
    iget-object v0, p0, Lmik;->h:Lmig;

    if-eqz v0, :cond_7

    .line 99
    const/16 v0, 0x8

    iget-object v1, p0, Lmik;->h:Lmig;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 101
    :cond_7
    iget-object v0, p0, Lmik;->i:Lmif;

    if-eqz v0, :cond_8

    .line 102
    const/16 v0, 0x9

    iget-object v1, p0, Lmik;->i:Lmif;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 104
    :cond_8
    iget-object v0, p0, Lmik;->j:Lmhv;

    if-eqz v0, :cond_9

    .line 105
    const/16 v0, 0xa

    iget-object v1, p0, Lmik;->j:Lmhv;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 107
    :cond_9
    iget-object v0, p0, Lmik;->k:Lmhx;

    if-eqz v0, :cond_a

    .line 108
    const/16 v0, 0xb

    iget-object v1, p0, Lmik;->k:Lmhx;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 110
    :cond_a
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 111
    return-void
.end method

.method protected b()I
    .locals 3

    .prologue
    .line 115
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 116
    iget-object v1, p0, Lmik;->a:Lmic;

    if-eqz v1, :cond_0

    .line 117
    const/4 v1, 0x1

    iget-object v2, p0, Lmik;->a:Lmic;

    .line 118
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 120
    :cond_0
    iget-object v1, p0, Lmik;->b:Ljava/lang/Long;

    if-eqz v1, :cond_1

    .line 121
    const/4 v1, 0x2

    iget-object v2, p0, Lmik;->b:Ljava/lang/Long;

    .line 122
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    .line 1602
    invoke-static {v1}, Llxz;->f(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x8

    .line 122
    add-int/2addr v0, v1

    .line 124
    :cond_1
    iget-object v1, p0, Lmik;->c:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 125
    const/4 v1, 0x3

    iget-object v2, p0, Lmik;->c:Ljava/lang/String;

    .line 126
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 128
    :cond_2
    iget-object v1, p0, Lmik;->d:Lmil;

    if-eqz v1, :cond_3

    .line 129
    const/4 v1, 0x4

    iget-object v2, p0, Lmik;->d:Lmil;

    .line 130
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 132
    :cond_3
    iget-object v1, p0, Lmik;->e:Lmht;

    if-eqz v1, :cond_4

    .line 133
    const/4 v1, 0x5

    iget-object v2, p0, Lmik;->e:Lmht;

    .line 134
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 136
    :cond_4
    iget-object v1, p0, Lmik;->f:Lmie;

    if-eqz v1, :cond_5

    .line 137
    const/4 v1, 0x6

    iget-object v2, p0, Lmik;->f:Lmie;

    .line 138
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 140
    :cond_5
    iget-object v1, p0, Lmik;->g:Lmhw;

    if-eqz v1, :cond_6

    .line 141
    const/4 v1, 0x7

    iget-object v2, p0, Lmik;->g:Lmhw;

    .line 142
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 144
    :cond_6
    iget-object v1, p0, Lmik;->h:Lmig;

    if-eqz v1, :cond_7

    .line 145
    const/16 v1, 0x8

    iget-object v2, p0, Lmik;->h:Lmig;

    .line 146
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 148
    :cond_7
    iget-object v1, p0, Lmik;->i:Lmif;

    if-eqz v1, :cond_8

    .line 149
    const/16 v1, 0x9

    iget-object v2, p0, Lmik;->i:Lmif;

    .line 150
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 152
    :cond_8
    iget-object v1, p0, Lmik;->j:Lmhv;

    if-eqz v1, :cond_9

    .line 153
    const/16 v1, 0xa

    iget-object v2, p0, Lmik;->j:Lmhv;

    .line 154
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 156
    :cond_9
    iget-object v1, p0, Lmik;->k:Lmhx;

    if-eqz v1, :cond_a

    .line 157
    const/16 v1, 0xb

    iget-object v2, p0, Lmik;->k:Lmhx;

    .line 158
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 160
    :cond_a
    return v0
.end method
