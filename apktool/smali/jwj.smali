.class public final Ljwj;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Ljwj;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile l:[Ljwj;


# instance fields
.field public a:Ljava/lang/String;

.field public b:[I

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/Boolean;

.field public f:Ljava/lang/Boolean;

.field public g:Ljava/lang/Boolean;

.field public h:Ljava/lang/Integer;

.field public i:Ljava/lang/Boolean;

.field public j:Ljava/lang/Boolean;

.field public k:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 58
    invoke-direct {p0}, Llyb;-><init>()V

    .line 59
    iput-object v1, p0, Ljwj;->a:Ljava/lang/String;

    .line 60
    sget-object v0, Llyo;->a:[I

    iput-object v0, p0, Ljwj;->b:[I

    .line 61
    iput-object v1, p0, Ljwj;->c:Ljava/lang/String;

    .line 62
    iput-object v1, p0, Ljwj;->d:Ljava/lang/String;

    .line 63
    iput-object v1, p0, Ljwj;->e:Ljava/lang/Boolean;

    .line 64
    iput-object v1, p0, Ljwj;->f:Ljava/lang/Boolean;

    .line 65
    iput-object v1, p0, Ljwj;->g:Ljava/lang/Boolean;

    .line 66
    iput-object v1, p0, Ljwj;->h:Ljava/lang/Integer;

    .line 67
    iput-object v1, p0, Ljwj;->i:Ljava/lang/Boolean;

    .line 68
    iput-object v1, p0, Ljwj;->j:Ljava/lang/Boolean;

    .line 69
    iput-object v1, p0, Ljwj;->k:Ljava/lang/Boolean;

    .line 70
    iput-object v1, p0, Ljwj;->eD:Llyd;

    .line 71
    const/4 v0, -0x1

    iput v0, p0, Ljwj;->eE:I

    .line 72
    return-void
.end method

.method public static d()[Ljwj;
    .locals 2

    .prologue
    .line 12
    sget-object v0, Ljwj;->l:[Ljwj;

    if-nez v0, :cond_1

    .line 13
    sget-object v1, Llyf;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 15
    :try_start_0
    sget-object v0, Ljwj;->l:[Ljwj;

    if-nez v0, :cond_0

    .line 16
    const/4 v0, 0x0

    new-array v0, v0, [Ljwj;

    sput-object v0, Ljwj;->l:[Ljwj;

    .line 18
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    :cond_1
    sget-object v0, Ljwj;->l:[Ljwj;

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
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 7176
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 7177
    sparse-switch v0, :sswitch_data_0

    .line 7181
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 7182
    :sswitch_0
    return-object p0

    .line 7187
    :sswitch_1
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljwj;->a:Ljava/lang/String;

    goto :goto_0

    .line 7191
    :sswitch_2
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljwj;->d:Ljava/lang/String;

    goto :goto_0

    .line 7195
    :sswitch_3
    invoke-virtual {p1}, Llxy;->i()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Ljwj;->e:Ljava/lang/Boolean;

    goto :goto_0

    .line 7199
    :sswitch_4
    invoke-virtual {p1}, Llxy;->i()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Ljwj;->f:Ljava/lang/Boolean;

    goto :goto_0

    .line 7203
    :sswitch_5
    invoke-virtual {p1}, Llxy;->i()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Ljwj;->g:Ljava/lang/Boolean;

    goto :goto_0

    .line 7207
    :sswitch_6
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Ljwj;->h:Ljava/lang/Integer;

    goto :goto_0

    .line 7211
    :sswitch_7
    invoke-virtual {p1}, Llxy;->i()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Ljwj;->i:Ljava/lang/Boolean;

    goto :goto_0

    .line 7215
    :sswitch_8
    const/16 v0, 0x40

    .line 7216
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v2

    .line 7217
    iget-object v0, p0, Ljwj;->b:[I

    if-nez v0, :cond_2

    move v0, v1

    .line 7218
    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [I

    .line 7219
    if-eqz v0, :cond_1

    .line 7220
    iget-object v3, p0, Ljwj;->b:[I

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 7222
    :cond_1
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_3

    .line 7223
    invoke-virtual {p1}, Llxy;->f()I

    move-result v3

    aput v3, v2, v0

    .line 7224
    invoke-virtual {p1}, Llxy;->a()I

    .line 7222
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 7217
    :cond_2
    iget-object v0, p0, Ljwj;->b:[I

    array-length v0, v0

    goto :goto_1

    .line 7227
    :cond_3
    invoke-virtual {p1}, Llxy;->f()I

    move-result v3

    aput v3, v2, v0

    .line 7228
    iput-object v2, p0, Ljwj;->b:[I

    goto/16 :goto_0

    .line 7232
    :sswitch_9
    invoke-virtual {p1}, Llxy;->p()I

    move-result v0

    .line 7233
    invoke-virtual {p1, v0}, Llxy;->c(I)I

    move-result v3

    .line 7236
    invoke-virtual {p1}, Llxy;->r()I

    move-result v2

    move v0, v1

    .line 7237
    :goto_3
    invoke-virtual {p1}, Llxy;->q()I

    move-result v4

    if-lez v4, :cond_4

    .line 7238
    invoke-virtual {p1}, Llxy;->f()I

    .line 7239
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 7241
    :cond_4
    invoke-virtual {p1, v2}, Llxy;->e(I)V

    .line 7242
    iget-object v2, p0, Ljwj;->b:[I

    if-nez v2, :cond_6

    move v2, v1

    .line 7243
    :goto_4
    add-int/2addr v0, v2

    new-array v0, v0, [I

    .line 7244
    if-eqz v2, :cond_5

    .line 7245
    iget-object v4, p0, Ljwj;->b:[I

    invoke-static {v4, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 7247
    :cond_5
    :goto_5
    array-length v4, v0

    if-ge v2, v4, :cond_7

    .line 7248
    invoke-virtual {p1}, Llxy;->f()I

    move-result v4

    aput v4, v0, v2

    .line 7247
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 7242
    :cond_6
    iget-object v2, p0, Ljwj;->b:[I

    array-length v2, v2

    goto :goto_4

    .line 7250
    :cond_7
    iput-object v0, p0, Ljwj;->b:[I

    .line 7251
    invoke-virtual {p1, v3}, Llxy;->d(I)V

    goto/16 :goto_0

    .line 7255
    :sswitch_a
    invoke-virtual {p1}, Llxy;->i()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Ljwj;->j:Ljava/lang/Boolean;

    goto/16 :goto_0

    .line 7259
    :sswitch_b
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljwj;->c:Ljava/lang/String;

    goto/16 :goto_0

    .line 7263
    :sswitch_c
    invoke-virtual {p1}, Llxy;->i()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Ljwj;->k:Ljava/lang/Boolean;

    goto/16 :goto_0

    .line 7177
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x18 -> :sswitch_3
        0x20 -> :sswitch_4
        0x28 -> :sswitch_5
        0x30 -> :sswitch_6
        0x38 -> :sswitch_7
        0x40 -> :sswitch_8
        0x42 -> :sswitch_9
        0x48 -> :sswitch_a
        0x52 -> :sswitch_b
        0x58 -> :sswitch_c
    .end sparse-switch
.end method

.method public a(Llxz;)V
    .locals 3

    .prologue
    .line 77
    iget-object v0, p0, Ljwj;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 78
    const/4 v0, 0x1

    iget-object v1, p0, Ljwj;->a:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 80
    :cond_0
    iget-object v0, p0, Ljwj;->d:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 81
    const/4 v0, 0x2

    iget-object v1, p0, Ljwj;->d:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 83
    :cond_1
    iget-object v0, p0, Ljwj;->e:Ljava/lang/Boolean;

    if-eqz v0, :cond_2

    .line 84
    const/4 v0, 0x3

    iget-object v1, p0, Ljwj;->e:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(IZ)V

    .line 86
    :cond_2
    iget-object v0, p0, Ljwj;->f:Ljava/lang/Boolean;

    if-eqz v0, :cond_3

    .line 87
    const/4 v0, 0x4

    iget-object v1, p0, Ljwj;->f:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(IZ)V

    .line 89
    :cond_3
    iget-object v0, p0, Ljwj;->g:Ljava/lang/Boolean;

    if-eqz v0, :cond_4

    .line 90
    const/4 v0, 0x5

    iget-object v1, p0, Ljwj;->g:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(IZ)V

    .line 92
    :cond_4
    iget-object v0, p0, Ljwj;->h:Ljava/lang/Integer;

    if-eqz v0, :cond_5

    .line 93
    const/4 v0, 0x6

    iget-object v1, p0, Ljwj;->h:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(II)V

    .line 95
    :cond_5
    iget-object v0, p0, Ljwj;->i:Ljava/lang/Boolean;

    if-eqz v0, :cond_6

    .line 96
    const/4 v0, 0x7

    iget-object v1, p0, Ljwj;->i:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(IZ)V

    .line 98
    :cond_6
    iget-object v0, p0, Ljwj;->b:[I

    if-eqz v0, :cond_7

    iget-object v0, p0, Ljwj;->b:[I

    array-length v0, v0

    if-lez v0, :cond_7

    .line 99
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Ljwj;->b:[I

    array-length v1, v1

    if-ge v0, v1, :cond_7

    .line 100
    const/16 v1, 0x8

    iget-object v2, p0, Ljwj;->b:[I

    aget v2, v2, v0

    invoke-virtual {p1, v1, v2}, Llxz;->a(II)V

    .line 99
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 103
    :cond_7
    iget-object v0, p0, Ljwj;->j:Ljava/lang/Boolean;

    if-eqz v0, :cond_8

    .line 104
    const/16 v0, 0x9

    iget-object v1, p0, Ljwj;->j:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(IZ)V

    .line 106
    :cond_8
    iget-object v0, p0, Ljwj;->c:Ljava/lang/String;

    if-eqz v0, :cond_9

    .line 107
    const/16 v0, 0xa

    iget-object v1, p0, Ljwj;->c:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 109
    :cond_9
    iget-object v0, p0, Ljwj;->k:Ljava/lang/Boolean;

    if-eqz v0, :cond_a

    .line 110
    const/16 v0, 0xb

    iget-object v1, p0, Ljwj;->k:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(IZ)V

    .line 112
    :cond_a
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 113
    return-void
.end method

.method protected b()I
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 117
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 118
    iget-object v2, p0, Ljwj;->a:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 119
    const/4 v2, 0x1

    iget-object v3, p0, Ljwj;->a:Ljava/lang/String;

    .line 120
    invoke-static {v2, v3}, Llxz;->b(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    .line 122
    :cond_0
    iget-object v2, p0, Ljwj;->d:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 123
    const/4 v2, 0x2

    iget-object v3, p0, Ljwj;->d:Ljava/lang/String;

    .line 124
    invoke-static {v2, v3}, Llxz;->b(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    .line 126
    :cond_1
    iget-object v2, p0, Ljwj;->e:Ljava/lang/Boolean;

    if-eqz v2, :cond_2

    .line 127
    const/4 v2, 0x3

    iget-object v3, p0, Ljwj;->e:Ljava/lang/Boolean;

    .line 128
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 1620
    invoke-static {v2}, Llxz;->f(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    .line 128
    add-int/2addr v0, v2

    .line 130
    :cond_2
    iget-object v2, p0, Ljwj;->f:Ljava/lang/Boolean;

    if-eqz v2, :cond_3

    .line 131
    const/4 v2, 0x4

    iget-object v3, p0, Ljwj;->f:Ljava/lang/Boolean;

    .line 132
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 2620
    invoke-static {v2}, Llxz;->f(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    .line 132
    add-int/2addr v0, v2

    .line 134
    :cond_3
    iget-object v2, p0, Ljwj;->g:Ljava/lang/Boolean;

    if-eqz v2, :cond_4

    .line 135
    const/4 v2, 0x5

    iget-object v3, p0, Ljwj;->g:Ljava/lang/Boolean;

    .line 136
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 3620
    invoke-static {v2}, Llxz;->f(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    .line 136
    add-int/2addr v0, v2

    .line 138
    :cond_4
    iget-object v2, p0, Ljwj;->h:Ljava/lang/Integer;

    if-eqz v2, :cond_5

    .line 139
    const/4 v2, 0x6

    iget-object v3, p0, Ljwj;->h:Ljava/lang/Integer;

    .line 140
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v2, v3}, Llxz;->e(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 142
    :cond_5
    iget-object v2, p0, Ljwj;->i:Ljava/lang/Boolean;

    if-eqz v2, :cond_6

    .line 143
    const/4 v2, 0x7

    iget-object v3, p0, Ljwj;->i:Ljava/lang/Boolean;

    .line 144
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 4620
    invoke-static {v2}, Llxz;->f(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    .line 144
    add-int/2addr v0, v2

    .line 146
    :cond_6
    iget-object v2, p0, Ljwj;->b:[I

    if-eqz v2, :cond_8

    iget-object v2, p0, Ljwj;->b:[I

    array-length v2, v2

    if-lez v2, :cond_8

    move v2, v1

    .line 148
    :goto_0
    iget-object v3, p0, Ljwj;->b:[I

    array-length v3, v3

    if-ge v1, v3, :cond_7

    .line 149
    iget-object v3, p0, Ljwj;->b:[I

    aget v3, v3, v1

    .line 151
    invoke-static {v3}, Llxz;->e(I)I

    move-result v3

    add-int/2addr v2, v3

    .line 148
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 153
    :cond_7
    add-int/2addr v0, v2

    .line 154
    iget-object v1, p0, Ljwj;->b:[I

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    .line 156
    :cond_8
    iget-object v1, p0, Ljwj;->j:Ljava/lang/Boolean;

    if-eqz v1, :cond_9

    .line 157
    const/16 v1, 0x9

    iget-object v2, p0, Ljwj;->j:Ljava/lang/Boolean;

    .line 158
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 5620
    invoke-static {v1}, Llxz;->f(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 158
    add-int/2addr v0, v1

    .line 160
    :cond_9
    iget-object v1, p0, Ljwj;->c:Ljava/lang/String;

    if-eqz v1, :cond_a

    .line 161
    const/16 v1, 0xa

    iget-object v2, p0, Ljwj;->c:Ljava/lang/String;

    .line 162
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 164
    :cond_a
    iget-object v1, p0, Ljwj;->k:Ljava/lang/Boolean;

    if-eqz v1, :cond_b

    .line 165
    const/16 v1, 0xb

    iget-object v2, p0, Ljwj;->k:Ljava/lang/Boolean;

    .line 166
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 6620
    invoke-static {v1}, Llxz;->f(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 166
    add-int/2addr v0, v1

    .line 168
    :cond_b
    return v0
.end method
