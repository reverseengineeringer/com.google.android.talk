.class public final Ljhu;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Ljhu;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile j:[Ljhu;


# instance fields
.field public a:I

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public g:Ljava/lang/String;

.field public h:Ljava/lang/Integer;

.field public i:[Ljht;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 69
    invoke-direct {p0}, Llyb;-><init>()V

    .line 70
    const/high16 v0, -0x80000000

    iput v0, p0, Ljhu;->a:I

    .line 71
    iput-object v1, p0, Ljhu;->b:Ljava/lang/String;

    .line 72
    iput-object v1, p0, Ljhu;->c:Ljava/lang/String;

    .line 73
    iput-object v1, p0, Ljhu;->d:Ljava/lang/String;

    .line 74
    iput-object v1, p0, Ljhu;->e:Ljava/lang/String;

    .line 75
    iput-object v1, p0, Ljhu;->f:Ljava/lang/String;

    .line 76
    iput-object v1, p0, Ljhu;->g:Ljava/lang/String;

    .line 77
    iput-object v1, p0, Ljhu;->h:Ljava/lang/Integer;

    .line 78
    invoke-static {}, Ljht;->d()[Ljht;

    move-result-object v0

    iput-object v0, p0, Ljhu;->i:[Ljht;

    .line 79
    iput-object v1, p0, Ljhu;->eD:Llyd;

    .line 80
    const/4 v0, -0x1

    iput v0, p0, Ljhu;->eE:I

    .line 81
    return-void
.end method

.method public static d()[Ljhu;
    .locals 2

    .prologue
    .line 29
    sget-object v0, Ljhu;->j:[Ljhu;

    if-nez v0, :cond_1

    .line 30
    sget-object v1, Llyf;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 32
    :try_start_0
    sget-object v0, Ljhu;->j:[Ljhu;

    if-nez v0, :cond_0

    .line 33
    const/4 v0, 0x0

    new-array v0, v0, [Ljhu;

    sput-object v0, Ljhu;->j:[Ljhu;

    .line 35
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    :cond_1
    sget-object v0, Ljhu;->j:[Ljhu;

    return-object v0

    .line 35
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

    .line 1173
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 1174
    sparse-switch v0, :sswitch_data_0

    .line 1178
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1179
    :sswitch_0
    return-object p0

    .line 1184
    :sswitch_1
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    .line 1185
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 1199
    :pswitch_0
    iput v0, p0, Ljhu;->a:I

    goto :goto_0

    .line 1205
    :sswitch_2
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljhu;->b:Ljava/lang/String;

    goto :goto_0

    .line 1209
    :sswitch_3
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljhu;->c:Ljava/lang/String;

    goto :goto_0

    .line 1213
    :sswitch_4
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljhu;->d:Ljava/lang/String;

    goto :goto_0

    .line 1217
    :sswitch_5
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljhu;->e:Ljava/lang/String;

    goto :goto_0

    .line 1221
    :sswitch_6
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljhu;->f:Ljava/lang/String;

    goto :goto_0

    .line 1225
    :sswitch_7
    const/16 v0, 0x3a

    .line 1226
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v2

    .line 1227
    iget-object v0, p0, Ljhu;->i:[Ljht;

    if-nez v0, :cond_2

    move v0, v1

    .line 1228
    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Ljht;

    .line 1230
    if-eqz v0, :cond_1

    .line 1231
    iget-object v3, p0, Ljhu;->i:[Ljht;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1233
    :cond_1
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_3

    .line 1234
    new-instance v3, Ljht;

    invoke-direct {v3}, Ljht;-><init>()V

    aput-object v3, v2, v0

    .line 1235
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Llxy;->a(Llyi;)V

    .line 1236
    invoke-virtual {p1}, Llxy;->a()I

    .line 1233
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1227
    :cond_2
    iget-object v0, p0, Ljhu;->i:[Ljht;

    array-length v0, v0

    goto :goto_1

    .line 1239
    :cond_3
    new-instance v3, Ljht;

    invoke-direct {v3}, Ljht;-><init>()V

    aput-object v3, v2, v0

    .line 1240
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    .line 1241
    iput-object v2, p0, Ljhu;->i:[Ljht;

    goto :goto_0

    .line 1245
    :sswitch_8
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljhu;->g:Ljava/lang/String;

    goto/16 :goto_0

    .line 1249
    :sswitch_9
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Ljhu;->h:Ljava/lang/Integer;

    goto/16 :goto_0

    .line 1174
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
        0x2a -> :sswitch_5
        0x32 -> :sswitch_6
        0x3a -> :sswitch_7
        0x42 -> :sswitch_8
        0x48 -> :sswitch_9
    .end sparse-switch

    .line 1185
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
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public a(Llxz;)V
    .locals 3

    .prologue
    .line 86
    iget v0, p0, Ljhu;->a:I

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_0

    .line 87
    const/4 v0, 0x1

    iget v1, p0, Ljhu;->a:I

    invoke-virtual {p1, v0, v1}, Llxz;->a(II)V

    .line 89
    :cond_0
    iget-object v0, p0, Ljhu;->b:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 90
    const/4 v0, 0x2

    iget-object v1, p0, Ljhu;->b:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 92
    :cond_1
    iget-object v0, p0, Ljhu;->c:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 93
    const/4 v0, 0x3

    iget-object v1, p0, Ljhu;->c:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 95
    :cond_2
    iget-object v0, p0, Ljhu;->d:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 96
    const/4 v0, 0x4

    iget-object v1, p0, Ljhu;->d:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 98
    :cond_3
    iget-object v0, p0, Ljhu;->e:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 99
    const/4 v0, 0x5

    iget-object v1, p0, Ljhu;->e:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 101
    :cond_4
    iget-object v0, p0, Ljhu;->f:Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 102
    const/4 v0, 0x6

    iget-object v1, p0, Ljhu;->f:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 104
    :cond_5
    iget-object v0, p0, Ljhu;->i:[Ljht;

    if-eqz v0, :cond_7

    iget-object v0, p0, Ljhu;->i:[Ljht;

    array-length v0, v0

    if-lez v0, :cond_7

    .line 105
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Ljhu;->i:[Ljht;

    array-length v1, v1

    if-ge v0, v1, :cond_7

    .line 106
    iget-object v1, p0, Ljhu;->i:[Ljht;

    aget-object v1, v1, v0

    .line 107
    if-eqz v1, :cond_6

    .line 108
    const/4 v2, 0x7

    invoke-virtual {p1, v2, v1}, Llxz;->b(ILlyi;)V

    .line 105
    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 112
    :cond_7
    iget-object v0, p0, Ljhu;->g:Ljava/lang/String;

    if-eqz v0, :cond_8

    .line 113
    const/16 v0, 0x8

    iget-object v1, p0, Ljhu;->g:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 115
    :cond_8
    iget-object v0, p0, Ljhu;->h:Ljava/lang/Integer;

    if-eqz v0, :cond_9

    .line 116
    const/16 v0, 0x9

    iget-object v1, p0, Ljhu;->h:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(II)V

    .line 118
    :cond_9
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 119
    return-void
.end method

.method protected b()I
    .locals 5

    .prologue
    .line 123
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 124
    iget v1, p0, Ljhu;->a:I

    const/high16 v2, -0x80000000

    if-eq v1, v2, :cond_0

    .line 125
    const/4 v1, 0x1

    iget v2, p0, Ljhu;->a:I

    .line 126
    invoke-static {v1, v2}, Llxz;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 128
    :cond_0
    iget-object v1, p0, Ljhu;->b:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 129
    const/4 v1, 0x2

    iget-object v2, p0, Ljhu;->b:Ljava/lang/String;

    .line 130
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 132
    :cond_1
    iget-object v1, p0, Ljhu;->c:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 133
    const/4 v1, 0x3

    iget-object v2, p0, Ljhu;->c:Ljava/lang/String;

    .line 134
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 136
    :cond_2
    iget-object v1, p0, Ljhu;->d:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 137
    const/4 v1, 0x4

    iget-object v2, p0, Ljhu;->d:Ljava/lang/String;

    .line 138
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 140
    :cond_3
    iget-object v1, p0, Ljhu;->e:Ljava/lang/String;

    if-eqz v1, :cond_4

    .line 141
    const/4 v1, 0x5

    iget-object v2, p0, Ljhu;->e:Ljava/lang/String;

    .line 142
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 144
    :cond_4
    iget-object v1, p0, Ljhu;->f:Ljava/lang/String;

    if-eqz v1, :cond_5

    .line 145
    const/4 v1, 0x6

    iget-object v2, p0, Ljhu;->f:Ljava/lang/String;

    .line 146
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 148
    :cond_5
    iget-object v1, p0, Ljhu;->i:[Ljht;

    if-eqz v1, :cond_8

    iget-object v1, p0, Ljhu;->i:[Ljht;

    array-length v1, v1

    if-lez v1, :cond_8

    .line 149
    const/4 v1, 0x0

    move v4, v1

    move v1, v0

    move v0, v4

    :goto_0
    iget-object v2, p0, Ljhu;->i:[Ljht;

    array-length v2, v2

    if-ge v0, v2, :cond_7

    .line 150
    iget-object v2, p0, Ljhu;->i:[Ljht;

    aget-object v2, v2, v0

    .line 151
    if-eqz v2, :cond_6

    .line 152
    const/4 v3, 0x7

    .line 153
    invoke-static {v3, v2}, Llxz;->d(ILlyi;)I

    move-result v2

    add-int/2addr v1, v2

    .line 149
    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_7
    move v0, v1

    .line 157
    :cond_8
    iget-object v1, p0, Ljhu;->g:Ljava/lang/String;

    if-eqz v1, :cond_9

    .line 158
    const/16 v1, 0x8

    iget-object v2, p0, Ljhu;->g:Ljava/lang/String;

    .line 159
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 161
    :cond_9
    iget-object v1, p0, Ljhu;->h:Ljava/lang/Integer;

    if-eqz v1, :cond_a

    .line 162
    const/16 v1, 0x9

    iget-object v2, p0, Ljhu;->h:Ljava/lang/Integer;

    .line 163
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Llxz;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 165
    :cond_a
    return v0
.end method
