.class public final Lmkg;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Lmkg;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile j:[Lmkg;


# instance fields
.field public a:Ljava/lang/Float;

.field public b:Ljava/lang/Float;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public g:Ljava/lang/String;

.field public h:Ljava/lang/String;

.field public i:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 59
    invoke-direct {p0}, Llyb;-><init>()V

    .line 1064
    iput-object v0, p0, Lmkg;->a:Ljava/lang/Float;

    .line 1065
    iput-object v0, p0, Lmkg;->b:Ljava/lang/Float;

    .line 1066
    iput-object v0, p0, Lmkg;->c:Ljava/lang/String;

    .line 1067
    iput-object v0, p0, Lmkg;->d:Ljava/lang/String;

    .line 1068
    iput-object v0, p0, Lmkg;->e:Ljava/lang/String;

    .line 1069
    iput-object v0, p0, Lmkg;->f:Ljava/lang/String;

    .line 1070
    iput-object v0, p0, Lmkg;->g:Ljava/lang/String;

    .line 1071
    iput-object v0, p0, Lmkg;->h:Ljava/lang/String;

    .line 1072
    iput-object v0, p0, Lmkg;->i:Ljava/lang/Boolean;

    .line 1073
    iput-object v0, p0, Lmkg;->eD:Llyd;

    .line 1074
    const/4 v0, -0x1

    iput v0, p0, Lmkg;->eE:I

    .line 61
    return-void
.end method

.method public static d()[Lmkg;
    .locals 2

    .prologue
    .line 19
    sget-object v0, Lmkg;->j:[Lmkg;

    if-nez v0, :cond_1

    .line 20
    sget-object v1, Llyf;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 22
    :try_start_0
    sget-object v0, Lmkg;->j:[Lmkg;

    if-nez v0, :cond_0

    .line 23
    const/4 v0, 0x0

    new-array v0, v0, [Lmkg;

    sput-object v0, Lmkg;->j:[Lmkg;

    .line 25
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    :cond_1
    sget-object v0, Lmkg;->j:[Lmkg;

    return-object v0

    .line 25
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
    .line 3158
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 3159
    sparse-switch v0, :sswitch_data_0

    .line 3163
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3164
    :sswitch_0
    return-object p0

    .line 3169
    :sswitch_1
    invoke-virtual {p1}, Llxy;->c()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lmkg;->a:Ljava/lang/Float;

    goto :goto_0

    .line 3173
    :sswitch_2
    invoke-virtual {p1}, Llxy;->c()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lmkg;->b:Ljava/lang/Float;

    goto :goto_0

    .line 3177
    :sswitch_3
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmkg;->c:Ljava/lang/String;

    goto :goto_0

    .line 3181
    :sswitch_4
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmkg;->d:Ljava/lang/String;

    goto :goto_0

    .line 3185
    :sswitch_5
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmkg;->e:Ljava/lang/String;

    goto :goto_0

    .line 3189
    :sswitch_6
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmkg;->f:Ljava/lang/String;

    goto :goto_0

    .line 3193
    :sswitch_7
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmkg;->g:Ljava/lang/String;

    goto :goto_0

    .line 3197
    :sswitch_8
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmkg;->h:Ljava/lang/String;

    goto :goto_0

    .line 3201
    :sswitch_9
    invoke-virtual {p1}, Llxy;->i()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lmkg;->i:Ljava/lang/Boolean;

    goto :goto_0

    .line 3159
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xd -> :sswitch_1
        0x15 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
        0x2a -> :sswitch_5
        0x3a -> :sswitch_6
        0x42 -> :sswitch_7
        0x4a -> :sswitch_8
        0x50 -> :sswitch_9
    .end sparse-switch
.end method

.method public a(Llxz;)V
    .locals 2

    .prologue
    .line 81
    iget-object v0, p0, Lmkg;->a:Ljava/lang/Float;

    if-eqz v0, :cond_0

    .line 82
    const/4 v0, 0x1

    iget-object v1, p0, Lmkg;->a:Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(IF)V

    .line 84
    :cond_0
    iget-object v0, p0, Lmkg;->b:Ljava/lang/Float;

    if-eqz v0, :cond_1

    .line 85
    const/4 v0, 0x2

    iget-object v1, p0, Lmkg;->b:Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(IF)V

    .line 87
    :cond_1
    iget-object v0, p0, Lmkg;->c:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 88
    const/4 v0, 0x3

    iget-object v1, p0, Lmkg;->c:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 90
    :cond_2
    iget-object v0, p0, Lmkg;->d:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 91
    const/4 v0, 0x4

    iget-object v1, p0, Lmkg;->d:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 93
    :cond_3
    iget-object v0, p0, Lmkg;->e:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 94
    const/4 v0, 0x5

    iget-object v1, p0, Lmkg;->e:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 96
    :cond_4
    iget-object v0, p0, Lmkg;->f:Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 97
    const/4 v0, 0x7

    iget-object v1, p0, Lmkg;->f:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 99
    :cond_5
    iget-object v0, p0, Lmkg;->g:Ljava/lang/String;

    if-eqz v0, :cond_6

    .line 100
    const/16 v0, 0x8

    iget-object v1, p0, Lmkg;->g:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 102
    :cond_6
    iget-object v0, p0, Lmkg;->h:Ljava/lang/String;

    if-eqz v0, :cond_7

    .line 103
    const/16 v0, 0x9

    iget-object v1, p0, Lmkg;->h:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 105
    :cond_7
    iget-object v0, p0, Lmkg;->i:Ljava/lang/Boolean;

    if-eqz v0, :cond_8

    .line 106
    const/16 v0, 0xa

    iget-object v1, p0, Lmkg;->i:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(IZ)V

    .line 108
    :cond_8
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 109
    return-void
.end method

.method protected b()I
    .locals 3

    .prologue
    .line 113
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 114
    iget-object v1, p0, Lmkg;->a:Ljava/lang/Float;

    if-eqz v1, :cond_0

    .line 115
    const/4 v1, 0x1

    iget-object v2, p0, Lmkg;->a:Ljava/lang/Float;

    .line 116
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    .line 1569
    invoke-static {v1}, Llxz;->f(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x4

    .line 116
    add-int/2addr v0, v1

    .line 118
    :cond_0
    iget-object v1, p0, Lmkg;->b:Ljava/lang/Float;

    if-eqz v1, :cond_1

    .line 119
    const/4 v1, 0x2

    iget-object v2, p0, Lmkg;->b:Ljava/lang/Float;

    .line 120
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    .line 2569
    invoke-static {v1}, Llxz;->f(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x4

    .line 120
    add-int/2addr v0, v1

    .line 122
    :cond_1
    iget-object v1, p0, Lmkg;->c:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 123
    const/4 v1, 0x3

    iget-object v2, p0, Lmkg;->c:Ljava/lang/String;

    .line 124
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 126
    :cond_2
    iget-object v1, p0, Lmkg;->d:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 127
    const/4 v1, 0x4

    iget-object v2, p0, Lmkg;->d:Ljava/lang/String;

    .line 128
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 130
    :cond_3
    iget-object v1, p0, Lmkg;->e:Ljava/lang/String;

    if-eqz v1, :cond_4

    .line 131
    const/4 v1, 0x5

    iget-object v2, p0, Lmkg;->e:Ljava/lang/String;

    .line 132
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 134
    :cond_4
    iget-object v1, p0, Lmkg;->f:Ljava/lang/String;

    if-eqz v1, :cond_5

    .line 135
    const/4 v1, 0x7

    iget-object v2, p0, Lmkg;->f:Ljava/lang/String;

    .line 136
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 138
    :cond_5
    iget-object v1, p0, Lmkg;->g:Ljava/lang/String;

    if-eqz v1, :cond_6

    .line 139
    const/16 v1, 0x8

    iget-object v2, p0, Lmkg;->g:Ljava/lang/String;

    .line 140
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 142
    :cond_6
    iget-object v1, p0, Lmkg;->h:Ljava/lang/String;

    if-eqz v1, :cond_7

    .line 143
    const/16 v1, 0x9

    iget-object v2, p0, Lmkg;->h:Ljava/lang/String;

    .line 144
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 146
    :cond_7
    iget-object v1, p0, Lmkg;->i:Ljava/lang/Boolean;

    if-eqz v1, :cond_8

    .line 147
    const/16 v1, 0xa

    iget-object v2, p0, Lmkg;->i:Ljava/lang/Boolean;

    .line 148
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 2620
    invoke-static {v1}, Llxz;->f(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 148
    add-int/2addr v0, v1

    .line 150
    :cond_8
    return v0
.end method
