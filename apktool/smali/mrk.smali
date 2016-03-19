.class public final Lmrk;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Lmrk;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile k:[Lmrk;


# instance fields
.field public a:Ljava/lang/Float;

.field public b:Ljava/lang/Float;

.field public c:Ljava/lang/Float;

.field public d:Ljava/lang/Boolean;

.field public e:Ljava/lang/Float;

.field public f:Ljava/lang/Float;

.field public g:Ljava/lang/Float;

.field public h:Ljava/lang/Float;

.field public i:Ljava/lang/Float;

.field public j:Ljava/lang/Float;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 59
    invoke-direct {p0}, Llyb;-><init>()V

    .line 1064
    iput-object v0, p0, Lmrk;->a:Ljava/lang/Float;

    .line 1065
    iput-object v0, p0, Lmrk;->b:Ljava/lang/Float;

    .line 1066
    iput-object v0, p0, Lmrk;->c:Ljava/lang/Float;

    .line 1067
    iput-object v0, p0, Lmrk;->d:Ljava/lang/Boolean;

    .line 1068
    iput-object v0, p0, Lmrk;->e:Ljava/lang/Float;

    .line 1069
    iput-object v0, p0, Lmrk;->f:Ljava/lang/Float;

    .line 1070
    iput-object v0, p0, Lmrk;->g:Ljava/lang/Float;

    .line 1071
    iput-object v0, p0, Lmrk;->h:Ljava/lang/Float;

    .line 1072
    iput-object v0, p0, Lmrk;->i:Ljava/lang/Float;

    .line 1073
    iput-object v0, p0, Lmrk;->j:Ljava/lang/Float;

    .line 1074
    iput-object v0, p0, Lmrk;->eD:Llyd;

    .line 1075
    const/4 v0, -0x1

    iput v0, p0, Lmrk;->eE:I

    .line 61
    return-void
.end method

.method public static d()[Lmrk;
    .locals 2

    .prologue
    .line 16
    sget-object v0, Lmrk;->k:[Lmrk;

    if-nez v0, :cond_1

    .line 17
    sget-object v1, Llyf;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 19
    :try_start_0
    sget-object v0, Lmrk;->k:[Lmrk;

    if-nez v0, :cond_0

    .line 20
    const/4 v0, 0x0

    new-array v0, v0, [Lmrk;

    sput-object v0, Lmrk;->k:[Lmrk;

    .line 22
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    :cond_1
    sget-object v0, Lmrk;->k:[Lmrk;

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
    .line 10166
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 10167
    sparse-switch v0, :sswitch_data_0

    .line 10171
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 10172
    :sswitch_0
    return-object p0

    .line 10177
    :sswitch_1
    invoke-virtual {p1}, Llxy;->c()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lmrk;->a:Ljava/lang/Float;

    goto :goto_0

    .line 10181
    :sswitch_2
    invoke-virtual {p1}, Llxy;->c()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lmrk;->b:Ljava/lang/Float;

    goto :goto_0

    .line 10185
    :sswitch_3
    invoke-virtual {p1}, Llxy;->c()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lmrk;->c:Ljava/lang/Float;

    goto :goto_0

    .line 10189
    :sswitch_4
    invoke-virtual {p1}, Llxy;->i()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lmrk;->d:Ljava/lang/Boolean;

    goto :goto_0

    .line 10193
    :sswitch_5
    invoke-virtual {p1}, Llxy;->c()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lmrk;->e:Ljava/lang/Float;

    goto :goto_0

    .line 10197
    :sswitch_6
    invoke-virtual {p1}, Llxy;->c()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lmrk;->f:Ljava/lang/Float;

    goto :goto_0

    .line 10201
    :sswitch_7
    invoke-virtual {p1}, Llxy;->c()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lmrk;->g:Ljava/lang/Float;

    goto :goto_0

    .line 10205
    :sswitch_8
    invoke-virtual {p1}, Llxy;->c()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lmrk;->h:Ljava/lang/Float;

    goto :goto_0

    .line 10209
    :sswitch_9
    invoke-virtual {p1}, Llxy;->c()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lmrk;->i:Ljava/lang/Float;

    goto :goto_0

    .line 10213
    :sswitch_a
    invoke-virtual {p1}, Llxy;->c()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lmrk;->j:Ljava/lang/Float;

    goto :goto_0

    .line 10167
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xd -> :sswitch_1
        0x15 -> :sswitch_2
        0x1d -> :sswitch_3
        0x20 -> :sswitch_4
        0x2d -> :sswitch_5
        0x35 -> :sswitch_6
        0x3d -> :sswitch_7
        0x45 -> :sswitch_8
        0x4d -> :sswitch_9
        0x55 -> :sswitch_a
    .end sparse-switch
.end method

.method public a(Llxz;)V
    .locals 2

    .prologue
    .line 82
    iget-object v0, p0, Lmrk;->a:Ljava/lang/Float;

    if-eqz v0, :cond_0

    .line 83
    const/4 v0, 0x1

    iget-object v1, p0, Lmrk;->a:Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(IF)V

    .line 85
    :cond_0
    iget-object v0, p0, Lmrk;->b:Ljava/lang/Float;

    if-eqz v0, :cond_1

    .line 86
    const/4 v0, 0x2

    iget-object v1, p0, Lmrk;->b:Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(IF)V

    .line 88
    :cond_1
    iget-object v0, p0, Lmrk;->c:Ljava/lang/Float;

    if-eqz v0, :cond_2

    .line 89
    const/4 v0, 0x3

    iget-object v1, p0, Lmrk;->c:Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(IF)V

    .line 91
    :cond_2
    iget-object v0, p0, Lmrk;->d:Ljava/lang/Boolean;

    if-eqz v0, :cond_3

    .line 92
    const/4 v0, 0x4

    iget-object v1, p0, Lmrk;->d:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(IZ)V

    .line 94
    :cond_3
    iget-object v0, p0, Lmrk;->e:Ljava/lang/Float;

    if-eqz v0, :cond_4

    .line 95
    const/4 v0, 0x5

    iget-object v1, p0, Lmrk;->e:Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(IF)V

    .line 97
    :cond_4
    iget-object v0, p0, Lmrk;->f:Ljava/lang/Float;

    if-eqz v0, :cond_5

    .line 98
    const/4 v0, 0x6

    iget-object v1, p0, Lmrk;->f:Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(IF)V

    .line 100
    :cond_5
    iget-object v0, p0, Lmrk;->g:Ljava/lang/Float;

    if-eqz v0, :cond_6

    .line 101
    const/4 v0, 0x7

    iget-object v1, p0, Lmrk;->g:Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(IF)V

    .line 103
    :cond_6
    iget-object v0, p0, Lmrk;->h:Ljava/lang/Float;

    if-eqz v0, :cond_7

    .line 104
    const/16 v0, 0x8

    iget-object v1, p0, Lmrk;->h:Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(IF)V

    .line 106
    :cond_7
    iget-object v0, p0, Lmrk;->i:Ljava/lang/Float;

    if-eqz v0, :cond_8

    .line 107
    const/16 v0, 0x9

    iget-object v1, p0, Lmrk;->i:Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(IF)V

    .line 109
    :cond_8
    iget-object v0, p0, Lmrk;->j:Ljava/lang/Float;

    if-eqz v0, :cond_9

    .line 110
    const/16 v0, 0xa

    iget-object v1, p0, Lmrk;->j:Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(IF)V

    .line 112
    :cond_9
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 113
    return-void
.end method

.method protected b()I
    .locals 3

    .prologue
    .line 117
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 118
    iget-object v1, p0, Lmrk;->a:Ljava/lang/Float;

    if-eqz v1, :cond_0

    .line 119
    const/4 v1, 0x1

    iget-object v2, p0, Lmrk;->a:Ljava/lang/Float;

    .line 120
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    .line 1569
    invoke-static {v1}, Llxz;->f(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x4

    .line 120
    add-int/2addr v0, v1

    .line 122
    :cond_0
    iget-object v1, p0, Lmrk;->b:Ljava/lang/Float;

    if-eqz v1, :cond_1

    .line 123
    const/4 v1, 0x2

    iget-object v2, p0, Lmrk;->b:Ljava/lang/Float;

    .line 124
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    .line 2569
    invoke-static {v1}, Llxz;->f(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x4

    .line 124
    add-int/2addr v0, v1

    .line 126
    :cond_1
    iget-object v1, p0, Lmrk;->c:Ljava/lang/Float;

    if-eqz v1, :cond_2

    .line 127
    const/4 v1, 0x3

    iget-object v2, p0, Lmrk;->c:Ljava/lang/Float;

    .line 128
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    .line 3569
    invoke-static {v1}, Llxz;->f(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x4

    .line 128
    add-int/2addr v0, v1

    .line 130
    :cond_2
    iget-object v1, p0, Lmrk;->d:Ljava/lang/Boolean;

    if-eqz v1, :cond_3

    .line 131
    const/4 v1, 0x4

    iget-object v2, p0, Lmrk;->d:Ljava/lang/Boolean;

    .line 132
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 3620
    invoke-static {v1}, Llxz;->f(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 132
    add-int/2addr v0, v1

    .line 134
    :cond_3
    iget-object v1, p0, Lmrk;->e:Ljava/lang/Float;

    if-eqz v1, :cond_4

    .line 135
    const/4 v1, 0x5

    iget-object v2, p0, Lmrk;->e:Ljava/lang/Float;

    .line 136
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    .line 4569
    invoke-static {v1}, Llxz;->f(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x4

    .line 136
    add-int/2addr v0, v1

    .line 138
    :cond_4
    iget-object v1, p0, Lmrk;->f:Ljava/lang/Float;

    if-eqz v1, :cond_5

    .line 139
    const/4 v1, 0x6

    iget-object v2, p0, Lmrk;->f:Ljava/lang/Float;

    .line 140
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    .line 5569
    invoke-static {v1}, Llxz;->f(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x4

    .line 140
    add-int/2addr v0, v1

    .line 142
    :cond_5
    iget-object v1, p0, Lmrk;->g:Ljava/lang/Float;

    if-eqz v1, :cond_6

    .line 143
    const/4 v1, 0x7

    iget-object v2, p0, Lmrk;->g:Ljava/lang/Float;

    .line 144
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    .line 6569
    invoke-static {v1}, Llxz;->f(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x4

    .line 144
    add-int/2addr v0, v1

    .line 146
    :cond_6
    iget-object v1, p0, Lmrk;->h:Ljava/lang/Float;

    if-eqz v1, :cond_7

    .line 147
    const/16 v1, 0x8

    iget-object v2, p0, Lmrk;->h:Ljava/lang/Float;

    .line 148
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    .line 7569
    invoke-static {v1}, Llxz;->f(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x4

    .line 148
    add-int/2addr v0, v1

    .line 150
    :cond_7
    iget-object v1, p0, Lmrk;->i:Ljava/lang/Float;

    if-eqz v1, :cond_8

    .line 151
    const/16 v1, 0x9

    iget-object v2, p0, Lmrk;->i:Ljava/lang/Float;

    .line 152
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    .line 8569
    invoke-static {v1}, Llxz;->f(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x4

    .line 152
    add-int/2addr v0, v1

    .line 154
    :cond_8
    iget-object v1, p0, Lmrk;->j:Ljava/lang/Float;

    if-eqz v1, :cond_9

    .line 155
    const/16 v1, 0xa

    iget-object v2, p0, Lmrk;->j:Ljava/lang/Float;

    .line 156
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    .line 9569
    invoke-static {v1}, Llxz;->f(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x4

    .line 156
    add-int/2addr v0, v1

    .line 158
    :cond_9
    return v0
.end method
