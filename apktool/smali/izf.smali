.class public final Lizf;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Lizf;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile j:[Lizf;


# instance fields
.field public a:Ljava/lang/Integer;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/Boolean;

.field public f:[Lizf;

.field public g:Ljava/lang/String;

.field public h:Ljava/lang/String;

.field public i:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 71
    invoke-direct {p0}, Llyb;-><init>()V

    .line 1076
    iput-object v1, p0, Lizf;->a:Ljava/lang/Integer;

    .line 1077
    iput-object v1, p0, Lizf;->b:Ljava/lang/String;

    .line 1078
    iput-object v1, p0, Lizf;->c:Ljava/lang/String;

    .line 1079
    iput-object v1, p0, Lizf;->d:Ljava/lang/String;

    .line 1080
    iput-object v1, p0, Lizf;->e:Ljava/lang/Boolean;

    .line 1081
    invoke-static {}, Lizf;->d()[Lizf;

    move-result-object v0

    iput-object v0, p0, Lizf;->f:[Lizf;

    .line 1082
    iput-object v1, p0, Lizf;->g:Ljava/lang/String;

    .line 1083
    iput-object v1, p0, Lizf;->h:Ljava/lang/String;

    .line 1084
    iput-object v1, p0, Lizf;->i:Ljava/lang/Integer;

    .line 1085
    iput-object v1, p0, Lizf;->eD:Llyd;

    .line 1086
    const/4 v0, -0x1

    iput v0, p0, Lizf;->eE:I

    .line 73
    return-void
.end method

.method public static d()[Lizf;
    .locals 2

    .prologue
    .line 31
    sget-object v0, Lizf;->j:[Lizf;

    if-nez v0, :cond_1

    .line 32
    sget-object v1, Llyf;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 34
    :try_start_0
    sget-object v0, Lizf;->j:[Lizf;

    if-nez v0, :cond_0

    .line 35
    const/4 v0, 0x0

    new-array v0, v0, [Lizf;

    sput-object v0, Lizf;->j:[Lizf;

    .line 37
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    :cond_1
    sget-object v0, Lizf;->j:[Lizf;

    return-object v0

    .line 37
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
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 2180
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 2181
    sparse-switch v0, :sswitch_data_0

    .line 2185
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2186
    :sswitch_0
    return-object p0

    .line 2191
    :sswitch_1
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    .line 2192
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 2204
    :pswitch_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lizf;->a:Ljava/lang/Integer;

    goto :goto_0

    .line 2210
    :sswitch_2
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lizf;->b:Ljava/lang/String;

    goto :goto_0

    .line 2214
    :sswitch_3
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lizf;->c:Ljava/lang/String;

    goto :goto_0

    .line 2218
    :sswitch_4
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lizf;->d:Ljava/lang/String;

    goto :goto_0

    .line 2222
    :sswitch_5
    invoke-virtual {p1}, Llxy;->i()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lizf;->e:Ljava/lang/Boolean;

    goto :goto_0

    .line 2226
    :sswitch_6
    const/16 v0, 0x32

    .line 2227
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v2

    .line 2228
    iget-object v0, p0, Lizf;->f:[Lizf;

    if-nez v0, :cond_2

    move v0, v1

    .line 2229
    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Lizf;

    .line 2231
    if-eqz v0, :cond_1

    .line 2232
    iget-object v3, p0, Lizf;->f:[Lizf;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2234
    :cond_1
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_3

    .line 2235
    new-instance v3, Lizf;

    invoke-direct {v3}, Lizf;-><init>()V

    aput-object v3, v2, v0

    .line 2236
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Llxy;->a(Llyi;)V

    .line 2237
    invoke-virtual {p1}, Llxy;->a()I

    .line 2234
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 2228
    :cond_2
    iget-object v0, p0, Lizf;->f:[Lizf;

    array-length v0, v0

    goto :goto_1

    .line 2240
    :cond_3
    new-instance v3, Lizf;

    invoke-direct {v3}, Lizf;-><init>()V

    aput-object v3, v2, v0

    .line 2241
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    .line 2242
    iput-object v2, p0, Lizf;->f:[Lizf;

    goto :goto_0

    .line 2246
    :sswitch_7
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lizf;->g:Ljava/lang/String;

    goto/16 :goto_0

    .line 2250
    :sswitch_8
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lizf;->h:Ljava/lang/String;

    goto/16 :goto_0

    .line 2254
    :sswitch_9
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lizf;->i:Ljava/lang/Integer;

    goto/16 :goto_0

    .line 2181
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
        0x28 -> :sswitch_5
        0x32 -> :sswitch_6
        0x3a -> :sswitch_7
        0x42 -> :sswitch_8
        0x48 -> :sswitch_9
    .end sparse-switch

    .line 2192
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public a(Llxz;)V
    .locals 3

    .prologue
    .line 93
    iget-object v0, p0, Lizf;->a:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 94
    const/4 v0, 0x1

    iget-object v1, p0, Lizf;->a:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(II)V

    .line 96
    :cond_0
    iget-object v0, p0, Lizf;->b:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 97
    const/4 v0, 0x2

    iget-object v1, p0, Lizf;->b:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 99
    :cond_1
    iget-object v0, p0, Lizf;->c:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 100
    const/4 v0, 0x3

    iget-object v1, p0, Lizf;->c:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 102
    :cond_2
    iget-object v0, p0, Lizf;->d:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 103
    const/4 v0, 0x4

    iget-object v1, p0, Lizf;->d:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 105
    :cond_3
    iget-object v0, p0, Lizf;->e:Ljava/lang/Boolean;

    if-eqz v0, :cond_4

    .line 106
    const/4 v0, 0x5

    iget-object v1, p0, Lizf;->e:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(IZ)V

    .line 108
    :cond_4
    iget-object v0, p0, Lizf;->f:[Lizf;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lizf;->f:[Lizf;

    array-length v0, v0

    if-lez v0, :cond_6

    .line 109
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lizf;->f:[Lizf;

    array-length v1, v1

    if-ge v0, v1, :cond_6

    .line 110
    iget-object v1, p0, Lizf;->f:[Lizf;

    aget-object v1, v1, v0

    .line 111
    if-eqz v1, :cond_5

    .line 112
    const/4 v2, 0x6

    invoke-virtual {p1, v2, v1}, Llxz;->b(ILlyi;)V

    .line 109
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 116
    :cond_6
    iget-object v0, p0, Lizf;->g:Ljava/lang/String;

    if-eqz v0, :cond_7

    .line 117
    const/4 v0, 0x7

    iget-object v1, p0, Lizf;->g:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 119
    :cond_7
    iget-object v0, p0, Lizf;->h:Ljava/lang/String;

    if-eqz v0, :cond_8

    .line 120
    const/16 v0, 0x8

    iget-object v1, p0, Lizf;->h:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 122
    :cond_8
    iget-object v0, p0, Lizf;->i:Ljava/lang/Integer;

    if-eqz v0, :cond_9

    .line 123
    const/16 v0, 0x9

    iget-object v1, p0, Lizf;->i:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(II)V

    .line 125
    :cond_9
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 126
    return-void
.end method

.method protected b()I
    .locals 5

    .prologue
    .line 130
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 131
    iget-object v1, p0, Lizf;->a:Ljava/lang/Integer;

    if-eqz v1, :cond_0

    .line 132
    const/4 v1, 0x1

    iget-object v2, p0, Lizf;->a:Ljava/lang/Integer;

    .line 133
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Llxz;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 135
    :cond_0
    iget-object v1, p0, Lizf;->b:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 136
    const/4 v1, 0x2

    iget-object v2, p0, Lizf;->b:Ljava/lang/String;

    .line 137
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 139
    :cond_1
    iget-object v1, p0, Lizf;->c:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 140
    const/4 v1, 0x3

    iget-object v2, p0, Lizf;->c:Ljava/lang/String;

    .line 141
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 143
    :cond_2
    iget-object v1, p0, Lizf;->d:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 144
    const/4 v1, 0x4

    iget-object v2, p0, Lizf;->d:Ljava/lang/String;

    .line 145
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 147
    :cond_3
    iget-object v1, p0, Lizf;->e:Ljava/lang/Boolean;

    if-eqz v1, :cond_4

    .line 148
    const/4 v1, 0x5

    iget-object v2, p0, Lizf;->e:Ljava/lang/Boolean;

    .line 149
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 1620
    invoke-static {v1}, Llxz;->f(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 149
    add-int/2addr v0, v1

    .line 151
    :cond_4
    iget-object v1, p0, Lizf;->f:[Lizf;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lizf;->f:[Lizf;

    array-length v1, v1

    if-lez v1, :cond_7

    .line 152
    const/4 v1, 0x0

    move v4, v1

    move v1, v0

    move v0, v4

    :goto_0
    iget-object v2, p0, Lizf;->f:[Lizf;

    array-length v2, v2

    if-ge v0, v2, :cond_6

    .line 153
    iget-object v2, p0, Lizf;->f:[Lizf;

    aget-object v2, v2, v0

    .line 154
    if-eqz v2, :cond_5

    .line 155
    const/4 v3, 0x6

    .line 156
    invoke-static {v3, v2}, Llxz;->d(ILlyi;)I

    move-result v2

    add-int/2addr v1, v2

    .line 152
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_6
    move v0, v1

    .line 160
    :cond_7
    iget-object v1, p0, Lizf;->g:Ljava/lang/String;

    if-eqz v1, :cond_8

    .line 161
    const/4 v1, 0x7

    iget-object v2, p0, Lizf;->g:Ljava/lang/String;

    .line 162
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 164
    :cond_8
    iget-object v1, p0, Lizf;->h:Ljava/lang/String;

    if-eqz v1, :cond_9

    .line 165
    const/16 v1, 0x8

    iget-object v2, p0, Lizf;->h:Ljava/lang/String;

    .line 166
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 168
    :cond_9
    iget-object v1, p0, Lizf;->i:Ljava/lang/Integer;

    if-eqz v1, :cond_a

    .line 169
    const/16 v1, 0x9

    iget-object v2, p0, Lizf;->i:Ljava/lang/Integer;

    .line 170
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Llxz;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 172
    :cond_a
    return v0
.end method
