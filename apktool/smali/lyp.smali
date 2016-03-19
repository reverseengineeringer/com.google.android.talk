.class public final Llyp;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Llyp;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile i:[Llyp;


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/Boolean;

.field public c:Ljava/lang/Double;

.field public d:[Ljava/lang/String;

.field public e:Ljava/lang/Long;

.field public f:Ljava/lang/Long;

.field public g:Ljava/lang/Integer;

.field public h:[J


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 49
    invoke-direct {p0}, Llyb;-><init>()V

    .line 50
    iput-object v1, p0, Llyp;->a:Ljava/lang/String;

    .line 51
    iput-object v1, p0, Llyp;->b:Ljava/lang/Boolean;

    .line 52
    iput-object v1, p0, Llyp;->c:Ljava/lang/Double;

    .line 53
    sget-object v0, Llyo;->f:[Ljava/lang/String;

    iput-object v0, p0, Llyp;->d:[Ljava/lang/String;

    .line 54
    iput-object v1, p0, Llyp;->e:Ljava/lang/Long;

    .line 55
    iput-object v1, p0, Llyp;->f:Ljava/lang/Long;

    .line 56
    iput-object v1, p0, Llyp;->g:Ljava/lang/Integer;

    .line 57
    sget-object v0, Llyo;->b:[J

    iput-object v0, p0, Llyp;->h:[J

    .line 58
    iput-object v1, p0, Llyp;->eD:Llyd;

    .line 59
    const/4 v0, -0x1

    iput v0, p0, Llyp;->eE:I

    .line 60
    return-void
.end method

.method public static d()[Llyp;
    .locals 2

    .prologue
    .line 12
    sget-object v0, Llyp;->i:[Llyp;

    if-nez v0, :cond_1

    .line 13
    sget-object v1, Llyf;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 15
    :try_start_0
    sget-object v0, Llyp;->i:[Llyp;

    if-nez v0, :cond_0

    .line 16
    const/4 v0, 0x0

    new-array v0, v0, [Llyp;

    sput-object v0, Llyp;->i:[Llyp;

    .line 18
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    :cond_1
    sget-object v0, Llyp;->i:[Llyp;

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
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 3154
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 3155
    sparse-switch v0, :sswitch_data_0

    .line 3159
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3160
    :sswitch_0
    return-object p0

    .line 3165
    :sswitch_1
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Llyp;->a:Ljava/lang/String;

    goto :goto_0

    .line 3169
    :sswitch_2
    invoke-virtual {p1}, Llxy;->i()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Llyp;->b:Ljava/lang/Boolean;

    goto :goto_0

    .line 3173
    :sswitch_3
    invoke-virtual {p1}, Llxy;->b()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Llyp;->c:Ljava/lang/Double;

    goto :goto_0

    .line 3177
    :sswitch_4
    const/16 v0, 0x22

    .line 3178
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v2

    .line 3179
    iget-object v0, p0, Llyp;->d:[Ljava/lang/String;

    if-nez v0, :cond_2

    move v0, v1

    .line 3180
    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Ljava/lang/String;

    .line 3181
    if-eqz v0, :cond_1

    .line 3182
    iget-object v3, p0, Llyp;->d:[Ljava/lang/String;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3184
    :cond_1
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_3

    .line 3185
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    .line 3186
    invoke-virtual {p1}, Llxy;->a()I

    .line 3184
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 3179
    :cond_2
    iget-object v0, p0, Llyp;->d:[Ljava/lang/String;

    array-length v0, v0

    goto :goto_1

    .line 3189
    :cond_3
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    .line 3190
    iput-object v2, p0, Llyp;->d:[Ljava/lang/String;

    goto :goto_0

    .line 3194
    :sswitch_5
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Llyp;->g:Ljava/lang/Integer;

    goto :goto_0

    .line 3198
    :sswitch_6
    invoke-virtual {p1}, Llxy;->e()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Llyp;->e:Ljava/lang/Long;

    goto :goto_0

    .line 3202
    :sswitch_7
    invoke-virtual {p1}, Llxy;->e()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Llyp;->f:Ljava/lang/Long;

    goto :goto_0

    .line 3206
    :sswitch_8
    const/16 v0, 0x40

    .line 3207
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v2

    .line 3208
    iget-object v0, p0, Llyp;->h:[J

    if-nez v0, :cond_5

    move v0, v1

    .line 3209
    :goto_3
    add-int/2addr v2, v0

    new-array v2, v2, [J

    .line 3210
    if-eqz v0, :cond_4

    .line 3211
    iget-object v3, p0, Llyp;->h:[J

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3213
    :cond_4
    :goto_4
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_6

    .line 3214
    invoke-virtual {p1}, Llxy;->e()J

    move-result-wide v4

    aput-wide v4, v2, v0

    .line 3215
    invoke-virtual {p1}, Llxy;->a()I

    .line 3213
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 3208
    :cond_5
    iget-object v0, p0, Llyp;->h:[J

    array-length v0, v0

    goto :goto_3

    .line 3218
    :cond_6
    invoke-virtual {p1}, Llxy;->e()J

    move-result-wide v4

    aput-wide v4, v2, v0

    .line 3219
    iput-object v2, p0, Llyp;->h:[J

    goto/16 :goto_0

    .line 3223
    :sswitch_9
    invoke-virtual {p1}, Llxy;->p()I

    move-result v0

    .line 3224
    invoke-virtual {p1, v0}, Llxy;->c(I)I

    move-result v3

    .line 3227
    invoke-virtual {p1}, Llxy;->r()I

    move-result v2

    move v0, v1

    .line 3228
    :goto_5
    invoke-virtual {p1}, Llxy;->q()I

    move-result v4

    if-lez v4, :cond_7

    .line 3229
    invoke-virtual {p1}, Llxy;->e()J

    .line 3230
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 3232
    :cond_7
    invoke-virtual {p1, v2}, Llxy;->e(I)V

    .line 3233
    iget-object v2, p0, Llyp;->h:[J

    if-nez v2, :cond_9

    move v2, v1

    .line 3234
    :goto_6
    add-int/2addr v0, v2

    new-array v0, v0, [J

    .line 3235
    if-eqz v2, :cond_8

    .line 3236
    iget-object v4, p0, Llyp;->h:[J

    invoke-static {v4, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3238
    :cond_8
    :goto_7
    array-length v4, v0

    if-ge v2, v4, :cond_a

    .line 3239
    invoke-virtual {p1}, Llxy;->e()J

    move-result-wide v4

    aput-wide v4, v0, v2

    .line 3238
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 3233
    :cond_9
    iget-object v2, p0, Llyp;->h:[J

    array-length v2, v2

    goto :goto_6

    .line 3241
    :cond_a
    iput-object v0, p0, Llyp;->h:[J

    .line 3242
    invoke-virtual {p1, v3}, Llxy;->d(I)V

    goto/16 :goto_0

    .line 3155
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x10 -> :sswitch_2
        0x19 -> :sswitch_3
        0x22 -> :sswitch_4
        0x28 -> :sswitch_5
        0x30 -> :sswitch_6
        0x38 -> :sswitch_7
        0x40 -> :sswitch_8
        0x42 -> :sswitch_9
    .end sparse-switch
.end method

.method public a(Llxz;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 65
    const/4 v0, 0x1

    iget-object v2, p0, Llyp;->a:Ljava/lang/String;

    invoke-virtual {p1, v0, v2}, Llxz;->a(ILjava/lang/String;)V

    .line 66
    iget-object v0, p0, Llyp;->b:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 67
    const/4 v0, 0x2

    iget-object v2, p0, Llyp;->b:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {p1, v0, v2}, Llxz;->a(IZ)V

    .line 69
    :cond_0
    iget-object v0, p0, Llyp;->c:Ljava/lang/Double;

    if-eqz v0, :cond_1

    .line 70
    const/4 v0, 0x3

    iget-object v2, p0, Llyp;->c:Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Llxz;->a(ID)V

    .line 72
    :cond_1
    iget-object v0, p0, Llyp;->d:[Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Llyp;->d:[Ljava/lang/String;

    array-length v0, v0

    if-lez v0, :cond_3

    move v0, v1

    .line 73
    :goto_0
    iget-object v2, p0, Llyp;->d:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_3

    .line 74
    iget-object v2, p0, Llyp;->d:[Ljava/lang/String;

    aget-object v2, v2, v0

    .line 75
    if-eqz v2, :cond_2

    .line 76
    const/4 v3, 0x4

    invoke-virtual {p1, v3, v2}, Llxz;->a(ILjava/lang/String;)V

    .line 73
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 80
    :cond_3
    iget-object v0, p0, Llyp;->g:Ljava/lang/Integer;

    if-eqz v0, :cond_4

    .line 81
    const/4 v0, 0x5

    iget-object v2, p0, Llyp;->g:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p1, v0, v2}, Llxz;->a(II)V

    .line 83
    :cond_4
    iget-object v0, p0, Llyp;->e:Ljava/lang/Long;

    if-eqz v0, :cond_5

    .line 84
    const/4 v0, 0x6

    iget-object v2, p0, Llyp;->e:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Llxz;->b(IJ)V

    .line 86
    :cond_5
    iget-object v0, p0, Llyp;->f:Ljava/lang/Long;

    if-eqz v0, :cond_6

    .line 87
    const/4 v0, 0x7

    iget-object v2, p0, Llyp;->f:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Llxz;->b(IJ)V

    .line 89
    :cond_6
    iget-object v0, p0, Llyp;->h:[J

    if-eqz v0, :cond_7

    iget-object v0, p0, Llyp;->h:[J

    array-length v0, v0

    if-lez v0, :cond_7

    .line 90
    :goto_1
    iget-object v0, p0, Llyp;->h:[J

    array-length v0, v0

    if-ge v1, v0, :cond_7

    .line 91
    const/16 v0, 0x8

    iget-object v2, p0, Llyp;->h:[J

    aget-wide v2, v2, v1

    invoke-virtual {p1, v0, v2, v3}, Llxz;->b(IJ)V

    .line 90
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 94
    :cond_7
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 95
    return-void
.end method

.method protected b()I
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 99
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 100
    const/4 v1, 0x1

    iget-object v3, p0, Llyp;->a:Ljava/lang/String;

    .line 101
    invoke-static {v1, v3}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 102
    iget-object v1, p0, Llyp;->b:Ljava/lang/Boolean;

    if-eqz v1, :cond_0

    .line 103
    const/4 v1, 0x2

    iget-object v3, p0, Llyp;->b:Ljava/lang/Boolean;

    .line 104
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 1620
    invoke-static {v1}, Llxz;->f(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 104
    add-int/2addr v0, v1

    .line 106
    :cond_0
    iget-object v1, p0, Llyp;->c:Ljava/lang/Double;

    if-eqz v1, :cond_1

    .line 107
    const/4 v1, 0x3

    iget-object v3, p0, Llyp;->c:Ljava/lang/Double;

    .line 108
    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    .line 2561
    invoke-static {v1}, Llxz;->f(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x8

    .line 108
    add-int/2addr v0, v1

    .line 110
    :cond_1
    iget-object v1, p0, Llyp;->d:[Ljava/lang/String;

    if-eqz v1, :cond_4

    iget-object v1, p0, Llyp;->d:[Ljava/lang/String;

    array-length v1, v1

    if-lez v1, :cond_4

    move v1, v2

    move v3, v2

    move v4, v2

    .line 113
    :goto_0
    iget-object v5, p0, Llyp;->d:[Ljava/lang/String;

    array-length v5, v5

    if-ge v1, v5, :cond_3

    .line 114
    iget-object v5, p0, Llyp;->d:[Ljava/lang/String;

    aget-object v5, v5, v1

    .line 115
    if-eqz v5, :cond_2

    .line 116
    add-int/lit8 v4, v4, 0x1

    .line 118
    invoke-static {v5}, Llxz;->a(Ljava/lang/String;)I

    move-result v5

    add-int/2addr v3, v5

    .line 113
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 121
    :cond_3
    add-int/2addr v0, v3

    .line 122
    mul-int/lit8 v1, v4, 0x1

    add-int/2addr v0, v1

    .line 124
    :cond_4
    iget-object v1, p0, Llyp;->g:Ljava/lang/Integer;

    if-eqz v1, :cond_5

    .line 125
    const/4 v1, 0x5

    iget-object v3, p0, Llyp;->g:Ljava/lang/Integer;

    .line 126
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v1, v3}, Llxz;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 128
    :cond_5
    iget-object v1, p0, Llyp;->e:Ljava/lang/Long;

    if-eqz v1, :cond_6

    .line 129
    const/4 v1, 0x6

    iget-object v3, p0, Llyp;->e:Ljava/lang/Long;

    .line 130
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v1, v4, v5}, Llxz;->e(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 132
    :cond_6
    iget-object v1, p0, Llyp;->f:Ljava/lang/Long;

    if-eqz v1, :cond_7

    .line 133
    const/4 v1, 0x7

    iget-object v3, p0, Llyp;->f:Ljava/lang/Long;

    .line 134
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v1, v4, v5}, Llxz;->e(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 136
    :cond_7
    iget-object v1, p0, Llyp;->h:[J

    if-eqz v1, :cond_9

    iget-object v1, p0, Llyp;->h:[J

    array-length v1, v1

    if-lez v1, :cond_9

    move v1, v2

    .line 138
    :goto_1
    iget-object v3, p0, Llyp;->h:[J

    array-length v3, v3

    if-ge v2, v3, :cond_8

    .line 139
    iget-object v3, p0, Llyp;->h:[J

    aget-wide v4, v3, v2

    .line 2765
    invoke-static {v4, v5}, Llxz;->b(J)I

    move-result v3

    .line 141
    add-int/2addr v1, v3

    .line 138
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 143
    :cond_8
    add-int/2addr v0, v1

    .line 144
    iget-object v1, p0, Llyp;->h:[J

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    .line 146
    :cond_9
    return v0
.end method
