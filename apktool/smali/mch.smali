.class public final Lmch;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Lmch;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile k:[Lmch;


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

    .line 55
    invoke-direct {p0}, Llyb;-><init>()V

    .line 56
    iput-object v0, p0, Lmch;->a:Ljava/lang/Float;

    .line 57
    iput-object v0, p0, Lmch;->b:Ljava/lang/Float;

    .line 58
    iput-object v0, p0, Lmch;->c:Ljava/lang/Float;

    .line 59
    iput-object v0, p0, Lmch;->d:Ljava/lang/Boolean;

    .line 60
    iput-object v0, p0, Lmch;->e:Ljava/lang/Float;

    .line 61
    iput-object v0, p0, Lmch;->f:Ljava/lang/Float;

    .line 62
    iput-object v0, p0, Lmch;->g:Ljava/lang/Float;

    .line 63
    iput-object v0, p0, Lmch;->h:Ljava/lang/Float;

    .line 64
    iput-object v0, p0, Lmch;->i:Ljava/lang/Float;

    .line 65
    iput-object v0, p0, Lmch;->j:Ljava/lang/Float;

    .line 66
    iput-object v0, p0, Lmch;->eD:Llyd;

    .line 67
    const/4 v0, -0x1

    iput v0, p0, Lmch;->eE:I

    .line 68
    return-void
.end method

.method public static d()[Lmch;
    .locals 2

    .prologue
    .line 12
    sget-object v0, Lmch;->k:[Lmch;

    if-nez v0, :cond_1

    .line 13
    sget-object v1, Llyf;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 15
    :try_start_0
    sget-object v0, Lmch;->k:[Lmch;

    if-nez v0, :cond_0

    .line 16
    const/4 v0, 0x0

    new-array v0, v0, [Lmch;

    sput-object v0, Lmch;->k:[Lmch;

    .line 18
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    :cond_1
    sget-object v0, Lmch;->k:[Lmch;

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
    .line 10157
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 10158
    sparse-switch v0, :sswitch_data_0

    .line 10162
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 10163
    :sswitch_0
    return-object p0

    .line 10168
    :sswitch_1
    invoke-virtual {p1}, Llxy;->c()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lmch;->a:Ljava/lang/Float;

    goto :goto_0

    .line 10172
    :sswitch_2
    invoke-virtual {p1}, Llxy;->c()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lmch;->b:Ljava/lang/Float;

    goto :goto_0

    .line 10176
    :sswitch_3
    invoke-virtual {p1}, Llxy;->c()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lmch;->c:Ljava/lang/Float;

    goto :goto_0

    .line 10180
    :sswitch_4
    invoke-virtual {p1}, Llxy;->i()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lmch;->d:Ljava/lang/Boolean;

    goto :goto_0

    .line 10184
    :sswitch_5
    invoke-virtual {p1}, Llxy;->c()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lmch;->e:Ljava/lang/Float;

    goto :goto_0

    .line 10188
    :sswitch_6
    invoke-virtual {p1}, Llxy;->c()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lmch;->f:Ljava/lang/Float;

    goto :goto_0

    .line 10192
    :sswitch_7
    invoke-virtual {p1}, Llxy;->c()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lmch;->g:Ljava/lang/Float;

    goto :goto_0

    .line 10196
    :sswitch_8
    invoke-virtual {p1}, Llxy;->c()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lmch;->h:Ljava/lang/Float;

    goto :goto_0

    .line 10200
    :sswitch_9
    invoke-virtual {p1}, Llxy;->c()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lmch;->i:Ljava/lang/Float;

    goto :goto_0

    .line 10204
    :sswitch_a
    invoke-virtual {p1}, Llxy;->c()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lmch;->j:Ljava/lang/Float;

    goto :goto_0

    .line 10158
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
    .line 73
    iget-object v0, p0, Lmch;->a:Ljava/lang/Float;

    if-eqz v0, :cond_0

    .line 74
    const/4 v0, 0x1

    iget-object v1, p0, Lmch;->a:Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(IF)V

    .line 76
    :cond_0
    iget-object v0, p0, Lmch;->b:Ljava/lang/Float;

    if-eqz v0, :cond_1

    .line 77
    const/4 v0, 0x2

    iget-object v1, p0, Lmch;->b:Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(IF)V

    .line 79
    :cond_1
    iget-object v0, p0, Lmch;->c:Ljava/lang/Float;

    if-eqz v0, :cond_2

    .line 80
    const/4 v0, 0x3

    iget-object v1, p0, Lmch;->c:Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(IF)V

    .line 82
    :cond_2
    iget-object v0, p0, Lmch;->d:Ljava/lang/Boolean;

    if-eqz v0, :cond_3

    .line 83
    const/4 v0, 0x4

    iget-object v1, p0, Lmch;->d:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(IZ)V

    .line 85
    :cond_3
    iget-object v0, p0, Lmch;->e:Ljava/lang/Float;

    if-eqz v0, :cond_4

    .line 86
    const/4 v0, 0x5

    iget-object v1, p0, Lmch;->e:Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(IF)V

    .line 88
    :cond_4
    iget-object v0, p0, Lmch;->f:Ljava/lang/Float;

    if-eqz v0, :cond_5

    .line 89
    const/4 v0, 0x6

    iget-object v1, p0, Lmch;->f:Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(IF)V

    .line 91
    :cond_5
    iget-object v0, p0, Lmch;->g:Ljava/lang/Float;

    if-eqz v0, :cond_6

    .line 92
    const/4 v0, 0x7

    iget-object v1, p0, Lmch;->g:Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(IF)V

    .line 94
    :cond_6
    iget-object v0, p0, Lmch;->h:Ljava/lang/Float;

    if-eqz v0, :cond_7

    .line 95
    const/16 v0, 0x8

    iget-object v1, p0, Lmch;->h:Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(IF)V

    .line 97
    :cond_7
    iget-object v0, p0, Lmch;->i:Ljava/lang/Float;

    if-eqz v0, :cond_8

    .line 98
    const/16 v0, 0x9

    iget-object v1, p0, Lmch;->i:Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(IF)V

    .line 100
    :cond_8
    iget-object v0, p0, Lmch;->j:Ljava/lang/Float;

    if-eqz v0, :cond_9

    .line 101
    const/16 v0, 0xa

    iget-object v1, p0, Lmch;->j:Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(IF)V

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
    iget-object v1, p0, Lmch;->a:Ljava/lang/Float;

    if-eqz v1, :cond_0

    .line 110
    const/4 v1, 0x1

    iget-object v2, p0, Lmch;->a:Ljava/lang/Float;

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
    iget-object v1, p0, Lmch;->b:Ljava/lang/Float;

    if-eqz v1, :cond_1

    .line 114
    const/4 v1, 0x2

    iget-object v2, p0, Lmch;->b:Ljava/lang/Float;

    .line 115
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    .line 2569
    invoke-static {v1}, Llxz;->f(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x4

    .line 115
    add-int/2addr v0, v1

    .line 117
    :cond_1
    iget-object v1, p0, Lmch;->c:Ljava/lang/Float;

    if-eqz v1, :cond_2

    .line 118
    const/4 v1, 0x3

    iget-object v2, p0, Lmch;->c:Ljava/lang/Float;

    .line 119
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    .line 3569
    invoke-static {v1}, Llxz;->f(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x4

    .line 119
    add-int/2addr v0, v1

    .line 121
    :cond_2
    iget-object v1, p0, Lmch;->d:Ljava/lang/Boolean;

    if-eqz v1, :cond_3

    .line 122
    const/4 v1, 0x4

    iget-object v2, p0, Lmch;->d:Ljava/lang/Boolean;

    .line 123
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 3620
    invoke-static {v1}, Llxz;->f(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 123
    add-int/2addr v0, v1

    .line 125
    :cond_3
    iget-object v1, p0, Lmch;->e:Ljava/lang/Float;

    if-eqz v1, :cond_4

    .line 126
    const/4 v1, 0x5

    iget-object v2, p0, Lmch;->e:Ljava/lang/Float;

    .line 127
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    .line 4569
    invoke-static {v1}, Llxz;->f(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x4

    .line 127
    add-int/2addr v0, v1

    .line 129
    :cond_4
    iget-object v1, p0, Lmch;->f:Ljava/lang/Float;

    if-eqz v1, :cond_5

    .line 130
    const/4 v1, 0x6

    iget-object v2, p0, Lmch;->f:Ljava/lang/Float;

    .line 131
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    .line 5569
    invoke-static {v1}, Llxz;->f(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x4

    .line 131
    add-int/2addr v0, v1

    .line 133
    :cond_5
    iget-object v1, p0, Lmch;->g:Ljava/lang/Float;

    if-eqz v1, :cond_6

    .line 134
    const/4 v1, 0x7

    iget-object v2, p0, Lmch;->g:Ljava/lang/Float;

    .line 135
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    .line 6569
    invoke-static {v1}, Llxz;->f(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x4

    .line 135
    add-int/2addr v0, v1

    .line 137
    :cond_6
    iget-object v1, p0, Lmch;->h:Ljava/lang/Float;

    if-eqz v1, :cond_7

    .line 138
    const/16 v1, 0x8

    iget-object v2, p0, Lmch;->h:Ljava/lang/Float;

    .line 139
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    .line 7569
    invoke-static {v1}, Llxz;->f(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x4

    .line 139
    add-int/2addr v0, v1

    .line 141
    :cond_7
    iget-object v1, p0, Lmch;->i:Ljava/lang/Float;

    if-eqz v1, :cond_8

    .line 142
    const/16 v1, 0x9

    iget-object v2, p0, Lmch;->i:Ljava/lang/Float;

    .line 143
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    .line 8569
    invoke-static {v1}, Llxz;->f(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x4

    .line 143
    add-int/2addr v0, v1

    .line 145
    :cond_8
    iget-object v1, p0, Lmch;->j:Ljava/lang/Float;

    if-eqz v1, :cond_9

    .line 146
    const/16 v1, 0xa

    iget-object v2, p0, Lmch;->j:Ljava/lang/Float;

    .line 147
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    .line 9569
    invoke-static {v1}, Llxz;->f(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x4

    .line 147
    add-int/2addr v0, v1

    .line 149
    :cond_9
    return v0
.end method
