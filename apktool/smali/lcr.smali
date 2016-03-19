.class public final Llcr;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Llcr;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile k:[Llcr;


# instance fields
.field public a:Ljava/lang/Float;

.field public b:Llcj;

.field public c:Llcj;

.field public d:Llcj;

.field public e:Llcs;

.field public f:Llcs;

.field public g:Llcs;

.field public h:Llcq;

.field public i:Llcq;

.field public j:Llcq;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 55
    invoke-direct {p0}, Llyb;-><init>()V

    .line 56
    iput-object v0, p0, Llcr;->a:Ljava/lang/Float;

    .line 57
    iput-object v0, p0, Llcr;->b:Llcj;

    .line 58
    iput-object v0, p0, Llcr;->c:Llcj;

    .line 59
    iput-object v0, p0, Llcr;->d:Llcj;

    .line 60
    iput-object v0, p0, Llcr;->e:Llcs;

    .line 61
    iput-object v0, p0, Llcr;->f:Llcs;

    .line 62
    iput-object v0, p0, Llcr;->g:Llcs;

    .line 63
    iput-object v0, p0, Llcr;->h:Llcq;

    .line 64
    iput-object v0, p0, Llcr;->i:Llcq;

    .line 65
    iput-object v0, p0, Llcr;->j:Llcq;

    .line 66
    iput-object v0, p0, Llcr;->eD:Llyd;

    .line 67
    const/4 v0, -0x1

    iput v0, p0, Llcr;->eE:I

    .line 68
    return-void
.end method

.method public static d()[Llcr;
    .locals 2

    .prologue
    .line 12
    sget-object v0, Llcr;->k:[Llcr;

    if-nez v0, :cond_1

    .line 13
    sget-object v1, Llyf;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 15
    :try_start_0
    sget-object v0, Llcr;->k:[Llcr;

    if-nez v0, :cond_0

    .line 16
    const/4 v0, 0x0

    new-array v0, v0, [Llcr;

    sput-object v0, Llcr;->k:[Llcr;

    .line 18
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    :cond_1
    sget-object v0, Llcr;->k:[Llcr;

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
    .line 2157
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 2158
    sparse-switch v0, :sswitch_data_0

    .line 2162
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2163
    :sswitch_0
    return-object p0

    .line 2168
    :sswitch_1
    invoke-virtual {p1}, Llxy;->c()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Llcr;->a:Ljava/lang/Float;

    goto :goto_0

    .line 2172
    :sswitch_2
    iget-object v0, p0, Llcr;->b:Llcj;

    if-nez v0, :cond_1

    .line 2173
    new-instance v0, Llcj;

    invoke-direct {v0}, Llcj;-><init>()V

    iput-object v0, p0, Llcr;->b:Llcj;

    .line 2175
    :cond_1
    iget-object v0, p0, Llcr;->b:Llcj;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 2179
    :sswitch_3
    iget-object v0, p0, Llcr;->c:Llcj;

    if-nez v0, :cond_2

    .line 2180
    new-instance v0, Llcj;

    invoke-direct {v0}, Llcj;-><init>()V

    iput-object v0, p0, Llcr;->c:Llcj;

    .line 2182
    :cond_2
    iget-object v0, p0, Llcr;->c:Llcj;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 2186
    :sswitch_4
    iget-object v0, p0, Llcr;->d:Llcj;

    if-nez v0, :cond_3

    .line 2187
    new-instance v0, Llcj;

    invoke-direct {v0}, Llcj;-><init>()V

    iput-object v0, p0, Llcr;->d:Llcj;

    .line 2189
    :cond_3
    iget-object v0, p0, Llcr;->d:Llcj;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 2193
    :sswitch_5
    iget-object v0, p0, Llcr;->e:Llcs;

    if-nez v0, :cond_4

    .line 2194
    new-instance v0, Llcs;

    invoke-direct {v0}, Llcs;-><init>()V

    iput-object v0, p0, Llcr;->e:Llcs;

    .line 2196
    :cond_4
    iget-object v0, p0, Llcr;->e:Llcs;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 2200
    :sswitch_6
    iget-object v0, p0, Llcr;->f:Llcs;

    if-nez v0, :cond_5

    .line 2201
    new-instance v0, Llcs;

    invoke-direct {v0}, Llcs;-><init>()V

    iput-object v0, p0, Llcr;->f:Llcs;

    .line 2203
    :cond_5
    iget-object v0, p0, Llcr;->f:Llcs;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 2207
    :sswitch_7
    iget-object v0, p0, Llcr;->g:Llcs;

    if-nez v0, :cond_6

    .line 2208
    new-instance v0, Llcs;

    invoke-direct {v0}, Llcs;-><init>()V

    iput-object v0, p0, Llcr;->g:Llcs;

    .line 2210
    :cond_6
    iget-object v0, p0, Llcr;->g:Llcs;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 2214
    :sswitch_8
    iget-object v0, p0, Llcr;->h:Llcq;

    if-nez v0, :cond_7

    .line 2215
    new-instance v0, Llcq;

    invoke-direct {v0}, Llcq;-><init>()V

    iput-object v0, p0, Llcr;->h:Llcq;

    .line 2217
    :cond_7
    iget-object v0, p0, Llcr;->h:Llcq;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto/16 :goto_0

    .line 2221
    :sswitch_9
    iget-object v0, p0, Llcr;->i:Llcq;

    if-nez v0, :cond_8

    .line 2222
    new-instance v0, Llcq;

    invoke-direct {v0}, Llcq;-><init>()V

    iput-object v0, p0, Llcr;->i:Llcq;

    .line 2224
    :cond_8
    iget-object v0, p0, Llcr;->i:Llcq;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto/16 :goto_0

    .line 2228
    :sswitch_a
    iget-object v0, p0, Llcr;->j:Llcq;

    if-nez v0, :cond_9

    .line 2229
    new-instance v0, Llcq;

    invoke-direct {v0}, Llcq;-><init>()V

    iput-object v0, p0, Llcr;->j:Llcq;

    .line 2231
    :cond_9
    iget-object v0, p0, Llcr;->j:Llcq;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto/16 :goto_0

    .line 2158
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xd -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
        0x2a -> :sswitch_5
        0x32 -> :sswitch_6
        0x3a -> :sswitch_7
        0x42 -> :sswitch_8
        0x4a -> :sswitch_9
        0x52 -> :sswitch_a
    .end sparse-switch
.end method

.method public a(Llxz;)V
    .locals 2

    .prologue
    .line 73
    iget-object v0, p0, Llcr;->a:Ljava/lang/Float;

    if-eqz v0, :cond_0

    .line 74
    const/4 v0, 0x1

    iget-object v1, p0, Llcr;->a:Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(IF)V

    .line 76
    :cond_0
    iget-object v0, p0, Llcr;->b:Llcj;

    if-eqz v0, :cond_1

    .line 77
    const/4 v0, 0x2

    iget-object v1, p0, Llcr;->b:Llcj;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 79
    :cond_1
    iget-object v0, p0, Llcr;->c:Llcj;

    if-eqz v0, :cond_2

    .line 80
    const/4 v0, 0x3

    iget-object v1, p0, Llcr;->c:Llcj;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 82
    :cond_2
    iget-object v0, p0, Llcr;->d:Llcj;

    if-eqz v0, :cond_3

    .line 83
    const/4 v0, 0x4

    iget-object v1, p0, Llcr;->d:Llcj;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 85
    :cond_3
    iget-object v0, p0, Llcr;->e:Llcs;

    if-eqz v0, :cond_4

    .line 86
    const/4 v0, 0x5

    iget-object v1, p0, Llcr;->e:Llcs;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 88
    :cond_4
    iget-object v0, p0, Llcr;->f:Llcs;

    if-eqz v0, :cond_5

    .line 89
    const/4 v0, 0x6

    iget-object v1, p0, Llcr;->f:Llcs;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 91
    :cond_5
    iget-object v0, p0, Llcr;->g:Llcs;

    if-eqz v0, :cond_6

    .line 92
    const/4 v0, 0x7

    iget-object v1, p0, Llcr;->g:Llcs;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 94
    :cond_6
    iget-object v0, p0, Llcr;->h:Llcq;

    if-eqz v0, :cond_7

    .line 95
    const/16 v0, 0x8

    iget-object v1, p0, Llcr;->h:Llcq;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 97
    :cond_7
    iget-object v0, p0, Llcr;->i:Llcq;

    if-eqz v0, :cond_8

    .line 98
    const/16 v0, 0x9

    iget-object v1, p0, Llcr;->i:Llcq;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 100
    :cond_8
    iget-object v0, p0, Llcr;->j:Llcq;

    if-eqz v0, :cond_9

    .line 101
    const/16 v0, 0xa

    iget-object v1, p0, Llcr;->j:Llcq;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 103
    :cond_9
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 104
    return-void
.end method

.method protected b()I
    .locals 3

    .prologue
    .line 108
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 109
    iget-object v1, p0, Llcr;->a:Ljava/lang/Float;

    if-eqz v1, :cond_0

    .line 110
    const/4 v1, 0x1

    iget-object v2, p0, Llcr;->a:Ljava/lang/Float;

    .line 111
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    .line 1569
    invoke-static {v1}, Llxz;->f(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x4

    .line 111
    add-int/2addr v0, v1

    .line 113
    :cond_0
    iget-object v1, p0, Llcr;->b:Llcj;

    if-eqz v1, :cond_1

    .line 114
    const/4 v1, 0x2

    iget-object v2, p0, Llcr;->b:Llcj;

    .line 115
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 117
    :cond_1
    iget-object v1, p0, Llcr;->c:Llcj;

    if-eqz v1, :cond_2

    .line 118
    const/4 v1, 0x3

    iget-object v2, p0, Llcr;->c:Llcj;

    .line 119
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 121
    :cond_2
    iget-object v1, p0, Llcr;->d:Llcj;

    if-eqz v1, :cond_3

    .line 122
    const/4 v1, 0x4

    iget-object v2, p0, Llcr;->d:Llcj;

    .line 123
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 125
    :cond_3
    iget-object v1, p0, Llcr;->e:Llcs;

    if-eqz v1, :cond_4

    .line 126
    const/4 v1, 0x5

    iget-object v2, p0, Llcr;->e:Llcs;

    .line 127
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 129
    :cond_4
    iget-object v1, p0, Llcr;->f:Llcs;

    if-eqz v1, :cond_5

    .line 130
    const/4 v1, 0x6

    iget-object v2, p0, Llcr;->f:Llcs;

    .line 131
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 133
    :cond_5
    iget-object v1, p0, Llcr;->g:Llcs;

    if-eqz v1, :cond_6

    .line 134
    const/4 v1, 0x7

    iget-object v2, p0, Llcr;->g:Llcs;

    .line 135
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 137
    :cond_6
    iget-object v1, p0, Llcr;->h:Llcq;

    if-eqz v1, :cond_7

    .line 138
    const/16 v1, 0x8

    iget-object v2, p0, Llcr;->h:Llcq;

    .line 139
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 141
    :cond_7
    iget-object v1, p0, Llcr;->i:Llcq;

    if-eqz v1, :cond_8

    .line 142
    const/16 v1, 0x9

    iget-object v2, p0, Llcr;->i:Llcq;

    .line 143
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 145
    :cond_8
    iget-object v1, p0, Llcr;->j:Llcq;

    if-eqz v1, :cond_9

    .line 146
    const/16 v1, 0xa

    iget-object v2, p0, Llcr;->j:Llcq;

    .line 147
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 149
    :cond_9
    return v0
.end method
