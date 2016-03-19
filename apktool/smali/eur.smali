.class public final Leur;
.super Llyi;
.source "SourceFile"


# static fields
.field private static volatile j:[Leur;


# instance fields
.field public a:Leup;

.field public b:Ljava/lang/String;

.field public c:J

.field public d:J

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public g:I

.field public h:Leuq;

.field public i:Z


# direct methods
.method public constructor <init>()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 52
    invoke-direct {p0}, Llyi;-><init>()V

    .line 1057
    iput-object v2, p0, Leur;->a:Leup;

    .line 1058
    const-string v0, ""

    iput-object v0, p0, Leur;->b:Ljava/lang/String;

    .line 1059
    iput-wide v4, p0, Leur;->c:J

    .line 1060
    iput-wide v4, p0, Leur;->d:J

    .line 1061
    const-string v0, ""

    iput-object v0, p0, Leur;->e:Ljava/lang/String;

    .line 1062
    const-string v0, ""

    iput-object v0, p0, Leur;->f:Ljava/lang/String;

    .line 1063
    iput v1, p0, Leur;->g:I

    .line 1064
    iput-object v2, p0, Leur;->h:Leuq;

    .line 1065
    iput-boolean v1, p0, Leur;->i:Z

    .line 1066
    const/4 v0, -0x1

    iput v0, p0, Leur;->eE:I

    .line 54
    return-void
.end method

.method public static d()[Leur;
    .locals 2

    .prologue
    .line 12
    sget-object v0, Leur;->j:[Leur;

    if-nez v0, :cond_1

    .line 13
    sget-object v1, Llyf;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 15
    :try_start_0
    sget-object v0, Leur;->j:[Leur;

    if-nez v0, :cond_0

    .line 16
    const/4 v0, 0x0

    new-array v0, v0, [Leur;

    sput-object v0, Leur;->j:[Leur;

    .line 18
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    :cond_1
    sget-object v0, Leur;->j:[Leur;

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
    .locals 2

    .prologue
    .line 2150
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 2151
    sparse-switch v0, :sswitch_data_0

    .line 3095
    invoke-virtual {p1, v0}, Llxy;->b(I)Z

    move-result v0

    .line 2155
    if-nez v0, :cond_0

    .line 2156
    :sswitch_0
    return-object p0

    .line 2161
    :sswitch_1
    iget-object v0, p0, Leur;->a:Leup;

    if-nez v0, :cond_1

    .line 2162
    new-instance v0, Leup;

    invoke-direct {v0}, Leup;-><init>()V

    iput-object v0, p0, Leur;->a:Leup;

    .line 2164
    :cond_1
    iget-object v0, p0, Leur;->a:Leup;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 2168
    :sswitch_2
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Leur;->b:Ljava/lang/String;

    goto :goto_0

    .line 2172
    :sswitch_3
    invoke-virtual {p1}, Llxy;->e()J

    move-result-wide v0

    iput-wide v0, p0, Leur;->c:J

    goto :goto_0

    .line 2176
    :sswitch_4
    invoke-virtual {p1}, Llxy;->e()J

    move-result-wide v0

    iput-wide v0, p0, Leur;->d:J

    goto :goto_0

    .line 2180
    :sswitch_5
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Leur;->e:Ljava/lang/String;

    goto :goto_0

    .line 2184
    :sswitch_6
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Leur;->f:Ljava/lang/String;

    goto :goto_0

    .line 2188
    :sswitch_7
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    iput v0, p0, Leur;->g:I

    goto :goto_0

    .line 2192
    :sswitch_8
    iget-object v0, p0, Leur;->h:Leuq;

    if-nez v0, :cond_2

    .line 2193
    new-instance v0, Leuq;

    invoke-direct {v0}, Leuq;-><init>()V

    iput-object v0, p0, Leur;->h:Leuq;

    .line 2195
    :cond_2
    iget-object v0, p0, Leur;->h:Leuq;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 2199
    :sswitch_9
    invoke-virtual {p1}, Llxy;->i()Z

    move-result v0

    iput-boolean v0, p0, Leur;->i:Z

    goto :goto_0

    .line 2151
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x18 -> :sswitch_3
        0x20 -> :sswitch_4
        0x2a -> :sswitch_5
        0x32 -> :sswitch_6
        0x38 -> :sswitch_7
        0x42 -> :sswitch_8
        0x48 -> :sswitch_9
    .end sparse-switch
.end method

.method public a(Llxz;)V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    .line 73
    iget-object v0, p0, Leur;->a:Leup;

    if-eqz v0, :cond_0

    .line 74
    const/4 v0, 0x1

    iget-object v1, p0, Leur;->a:Leup;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 76
    :cond_0
    iget-object v0, p0, Leur;->b:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 77
    const/4 v0, 0x2

    iget-object v1, p0, Leur;->b:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 79
    :cond_1
    iget-wide v0, p0, Leur;->c:J

    cmp-long v0, v0, v4

    if-eqz v0, :cond_2

    .line 80
    const/4 v0, 0x3

    iget-wide v2, p0, Leur;->c:J

    invoke-virtual {p1, v0, v2, v3}, Llxz;->b(IJ)V

    .line 82
    :cond_2
    iget-wide v0, p0, Leur;->d:J

    cmp-long v0, v0, v4

    if-eqz v0, :cond_3

    .line 83
    const/4 v0, 0x4

    iget-wide v2, p0, Leur;->d:J

    invoke-virtual {p1, v0, v2, v3}, Llxz;->b(IJ)V

    .line 85
    :cond_3
    iget-object v0, p0, Leur;->e:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 86
    const/4 v0, 0x5

    iget-object v1, p0, Leur;->e:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 88
    :cond_4
    iget-object v0, p0, Leur;->f:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 89
    const/4 v0, 0x6

    iget-object v1, p0, Leur;->f:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 91
    :cond_5
    iget v0, p0, Leur;->g:I

    if-eqz v0, :cond_6

    .line 92
    const/4 v0, 0x7

    iget v1, p0, Leur;->g:I

    invoke-virtual {p1, v0, v1}, Llxz;->a(II)V

    .line 94
    :cond_6
    iget-object v0, p0, Leur;->h:Leuq;

    if-eqz v0, :cond_7

    .line 95
    const/16 v0, 0x8

    iget-object v1, p0, Leur;->h:Leuq;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 97
    :cond_7
    iget-boolean v0, p0, Leur;->i:Z

    if-eqz v0, :cond_8

    .line 98
    const/16 v0, 0x9

    iget-boolean v1, p0, Leur;->i:Z

    invoke-virtual {p1, v0, v1}, Llxz;->a(IZ)V

    .line 100
    :cond_8
    invoke-super {p0, p1}, Llyi;->a(Llxz;)V

    .line 101
    return-void
.end method

.method protected b()I
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    .line 105
    invoke-super {p0}, Llyi;->b()I

    move-result v0

    .line 106
    iget-object v1, p0, Leur;->a:Leup;

    if-eqz v1, :cond_0

    .line 107
    const/4 v1, 0x1

    iget-object v2, p0, Leur;->a:Leup;

    .line 108
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 110
    :cond_0
    iget-object v1, p0, Leur;->b:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 111
    const/4 v1, 0x2

    iget-object v2, p0, Leur;->b:Ljava/lang/String;

    .line 112
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 114
    :cond_1
    iget-wide v2, p0, Leur;->c:J

    cmp-long v1, v2, v4

    if-eqz v1, :cond_2

    .line 115
    const/4 v1, 0x3

    iget-wide v2, p0, Leur;->c:J

    .line 116
    invoke-static {v1, v2, v3}, Llxz;->e(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 118
    :cond_2
    iget-wide v2, p0, Leur;->d:J

    cmp-long v1, v2, v4

    if-eqz v1, :cond_3

    .line 119
    const/4 v1, 0x4

    iget-wide v2, p0, Leur;->d:J

    .line 120
    invoke-static {v1, v2, v3}, Llxz;->e(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 122
    :cond_3
    iget-object v1, p0, Leur;->e:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 123
    const/4 v1, 0x5

    iget-object v2, p0, Leur;->e:Ljava/lang/String;

    .line 124
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 126
    :cond_4
    iget-object v1, p0, Leur;->f:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 127
    const/4 v1, 0x6

    iget-object v2, p0, Leur;->f:Ljava/lang/String;

    .line 128
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 130
    :cond_5
    iget v1, p0, Leur;->g:I

    if-eqz v1, :cond_6

    .line 131
    const/4 v1, 0x7

    iget v2, p0, Leur;->g:I

    .line 132
    invoke-static {v1, v2}, Llxz;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 134
    :cond_6
    iget-object v1, p0, Leur;->h:Leuq;

    if-eqz v1, :cond_7

    .line 135
    const/16 v1, 0x8

    iget-object v2, p0, Leur;->h:Leuq;

    .line 136
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 138
    :cond_7
    iget-boolean v1, p0, Leur;->i:Z

    if-eqz v1, :cond_8

    .line 139
    const/16 v1, 0x9

    .line 1620
    invoke-static {v1}, Llxz;->f(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 140
    add-int/2addr v0, v1

    .line 142
    :cond_8
    return v0
.end method
