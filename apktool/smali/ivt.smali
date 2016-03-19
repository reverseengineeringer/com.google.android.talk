.class public final Livt;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Livt;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile h:[Livt;


# instance fields
.field public a:Lixc;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:[Livw;

.field public g:[Livu;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 5103
    invoke-direct {p0}, Llyb;-><init>()V

    .line 6108
    iput-object v1, p0, Livt;->a:Lixc;

    .line 6109
    iput-object v1, p0, Livt;->b:Ljava/lang/String;

    .line 6110
    iput-object v1, p0, Livt;->c:Ljava/lang/String;

    .line 6111
    iput-object v1, p0, Livt;->d:Ljava/lang/String;

    .line 6112
    iput-object v1, p0, Livt;->e:Ljava/lang/String;

    .line 6113
    invoke-static {}, Livw;->d()[Livw;

    move-result-object v0

    iput-object v0, p0, Livt;->f:[Livw;

    .line 6114
    invoke-static {}, Livu;->d()[Livu;

    move-result-object v0

    iput-object v0, p0, Livt;->g:[Livu;

    .line 6115
    iput-object v1, p0, Livt;->eD:Llyd;

    .line 6116
    const/4 v0, -0x1

    iput v0, p0, Livt;->eE:I

    .line 5105
    return-void
.end method

.method public static d()[Livt;
    .locals 2

    .prologue
    .line 5069
    sget-object v0, Livt;->h:[Livt;

    if-nez v0, :cond_1

    .line 5070
    sget-object v1, Llyf;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 5072
    :try_start_0
    sget-object v0, Livt;->h:[Livt;

    if-nez v0, :cond_0

    .line 5073
    const/4 v0, 0x0

    new-array v0, v0, [Livt;

    sput-object v0, Livt;->h:[Livt;

    .line 5075
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5077
    :cond_1
    sget-object v0, Livt;->h:[Livt;

    return-object v0

    .line 5075
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

    .line 6206
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 6207
    sparse-switch v0, :sswitch_data_0

    .line 6211
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 6212
    :sswitch_0
    return-object p0

    .line 6217
    :sswitch_1
    iget-object v0, p0, Livt;->a:Lixc;

    if-nez v0, :cond_1

    .line 6218
    new-instance v0, Lixc;

    invoke-direct {v0}, Lixc;-><init>()V

    iput-object v0, p0, Livt;->a:Lixc;

    .line 6220
    :cond_1
    iget-object v0, p0, Livt;->a:Lixc;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 6224
    :sswitch_2
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Livt;->b:Ljava/lang/String;

    goto :goto_0

    .line 6228
    :sswitch_3
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Livt;->c:Ljava/lang/String;

    goto :goto_0

    .line 6232
    :sswitch_4
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Livt;->d:Ljava/lang/String;

    goto :goto_0

    .line 6236
    :sswitch_5
    const/16 v0, 0x2a

    .line 6237
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v2

    .line 6238
    iget-object v0, p0, Livt;->f:[Livw;

    if-nez v0, :cond_3

    move v0, v1

    .line 6239
    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Livw;

    .line 6241
    if-eqz v0, :cond_2

    .line 6242
    iget-object v3, p0, Livt;->f:[Livw;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 6244
    :cond_2
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_4

    .line 6245
    new-instance v3, Livw;

    invoke-direct {v3}, Livw;-><init>()V

    aput-object v3, v2, v0

    .line 6246
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Llxy;->a(Llyi;)V

    .line 6247
    invoke-virtual {p1}, Llxy;->a()I

    .line 6244
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 6238
    :cond_3
    iget-object v0, p0, Livt;->f:[Livw;

    array-length v0, v0

    goto :goto_1

    .line 6250
    :cond_4
    new-instance v3, Livw;

    invoke-direct {v3}, Livw;-><init>()V

    aput-object v3, v2, v0

    .line 6251
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    .line 6252
    iput-object v2, p0, Livt;->f:[Livw;

    goto :goto_0

    .line 6256
    :sswitch_6
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Livt;->e:Ljava/lang/String;

    goto :goto_0

    .line 6260
    :sswitch_7
    const/16 v0, 0x3a

    .line 6261
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v2

    .line 6262
    iget-object v0, p0, Livt;->g:[Livu;

    if-nez v0, :cond_6

    move v0, v1

    .line 6263
    :goto_3
    add-int/2addr v2, v0

    new-array v2, v2, [Livu;

    .line 6265
    if-eqz v0, :cond_5

    .line 6266
    iget-object v3, p0, Livt;->g:[Livu;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 6268
    :cond_5
    :goto_4
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_7

    .line 6269
    new-instance v3, Livu;

    invoke-direct {v3}, Livu;-><init>()V

    aput-object v3, v2, v0

    .line 6270
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Llxy;->a(Llyi;)V

    .line 6271
    invoke-virtual {p1}, Llxy;->a()I

    .line 6268
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 6262
    :cond_6
    iget-object v0, p0, Livt;->g:[Livu;

    array-length v0, v0

    goto :goto_3

    .line 6274
    :cond_7
    new-instance v3, Livu;

    invoke-direct {v3}, Livu;-><init>()V

    aput-object v3, v2, v0

    .line 6275
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    .line 6276
    iput-object v2, p0, Livt;->g:[Livu;

    goto/16 :goto_0

    .line 6207
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
        0x2a -> :sswitch_5
        0x32 -> :sswitch_6
        0x3a -> :sswitch_7
    .end sparse-switch
.end method

.method public a(Llxz;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 5123
    iget-object v0, p0, Livt;->a:Lixc;

    if-eqz v0, :cond_0

    .line 5124
    const/4 v0, 0x1

    iget-object v2, p0, Livt;->a:Lixc;

    invoke-virtual {p1, v0, v2}, Llxz;->b(ILlyi;)V

    .line 5126
    :cond_0
    iget-object v0, p0, Livt;->b:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 5127
    const/4 v0, 0x2

    iget-object v2, p0, Livt;->b:Ljava/lang/String;

    invoke-virtual {p1, v0, v2}, Llxz;->a(ILjava/lang/String;)V

    .line 5129
    :cond_1
    iget-object v0, p0, Livt;->c:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 5130
    const/4 v0, 0x3

    iget-object v2, p0, Livt;->c:Ljava/lang/String;

    invoke-virtual {p1, v0, v2}, Llxz;->a(ILjava/lang/String;)V

    .line 5132
    :cond_2
    iget-object v0, p0, Livt;->d:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 5133
    const/4 v0, 0x4

    iget-object v2, p0, Livt;->d:Ljava/lang/String;

    invoke-virtual {p1, v0, v2}, Llxz;->a(ILjava/lang/String;)V

    .line 5135
    :cond_3
    iget-object v0, p0, Livt;->f:[Livw;

    if-eqz v0, :cond_5

    iget-object v0, p0, Livt;->f:[Livw;

    array-length v0, v0

    if-lez v0, :cond_5

    move v0, v1

    .line 5136
    :goto_0
    iget-object v2, p0, Livt;->f:[Livw;

    array-length v2, v2

    if-ge v0, v2, :cond_5

    .line 5137
    iget-object v2, p0, Livt;->f:[Livw;

    aget-object v2, v2, v0

    .line 5138
    if-eqz v2, :cond_4

    .line 5139
    const/4 v3, 0x5

    invoke-virtual {p1, v3, v2}, Llxz;->b(ILlyi;)V

    .line 5136
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 5143
    :cond_5
    iget-object v0, p0, Livt;->e:Ljava/lang/String;

    if-eqz v0, :cond_6

    .line 5144
    const/4 v0, 0x6

    iget-object v2, p0, Livt;->e:Ljava/lang/String;

    invoke-virtual {p1, v0, v2}, Llxz;->a(ILjava/lang/String;)V

    .line 5146
    :cond_6
    iget-object v0, p0, Livt;->g:[Livu;

    if-eqz v0, :cond_8

    iget-object v0, p0, Livt;->g:[Livu;

    array-length v0, v0

    if-lez v0, :cond_8

    .line 5147
    :goto_1
    iget-object v0, p0, Livt;->g:[Livu;

    array-length v0, v0

    if-ge v1, v0, :cond_8

    .line 5148
    iget-object v0, p0, Livt;->g:[Livu;

    aget-object v0, v0, v1

    .line 5149
    if-eqz v0, :cond_7

    .line 5150
    const/4 v2, 0x7

    invoke-virtual {p1, v2, v0}, Llxz;->b(ILlyi;)V

    .line 5147
    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 5154
    :cond_8
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 5155
    return-void
.end method

.method protected b()I
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 5159
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 5160
    iget-object v2, p0, Livt;->a:Lixc;

    if-eqz v2, :cond_0

    .line 5161
    const/4 v2, 0x1

    iget-object v3, p0, Livt;->a:Lixc;

    .line 5162
    invoke-static {v2, v3}, Llxz;->d(ILlyi;)I

    move-result v2

    add-int/2addr v0, v2

    .line 5164
    :cond_0
    iget-object v2, p0, Livt;->b:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 5165
    const/4 v2, 0x2

    iget-object v3, p0, Livt;->b:Ljava/lang/String;

    .line 5166
    invoke-static {v2, v3}, Llxz;->b(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    .line 5168
    :cond_1
    iget-object v2, p0, Livt;->c:Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 5169
    const/4 v2, 0x3

    iget-object v3, p0, Livt;->c:Ljava/lang/String;

    .line 5170
    invoke-static {v2, v3}, Llxz;->b(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    .line 5172
    :cond_2
    iget-object v2, p0, Livt;->d:Ljava/lang/String;

    if-eqz v2, :cond_3

    .line 5173
    const/4 v2, 0x4

    iget-object v3, p0, Livt;->d:Ljava/lang/String;

    .line 5174
    invoke-static {v2, v3}, Llxz;->b(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    .line 5176
    :cond_3
    iget-object v2, p0, Livt;->f:[Livw;

    if-eqz v2, :cond_6

    iget-object v2, p0, Livt;->f:[Livw;

    array-length v2, v2

    if-lez v2, :cond_6

    move v2, v0

    move v0, v1

    .line 5177
    :goto_0
    iget-object v3, p0, Livt;->f:[Livw;

    array-length v3, v3

    if-ge v0, v3, :cond_5

    .line 5178
    iget-object v3, p0, Livt;->f:[Livw;

    aget-object v3, v3, v0

    .line 5179
    if-eqz v3, :cond_4

    .line 5180
    const/4 v4, 0x5

    .line 5181
    invoke-static {v4, v3}, Llxz;->d(ILlyi;)I

    move-result v3

    add-int/2addr v2, v3

    .line 5177
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_5
    move v0, v2

    .line 5185
    :cond_6
    iget-object v2, p0, Livt;->e:Ljava/lang/String;

    if-eqz v2, :cond_7

    .line 5186
    const/4 v2, 0x6

    iget-object v3, p0, Livt;->e:Ljava/lang/String;

    .line 5187
    invoke-static {v2, v3}, Llxz;->b(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    .line 5189
    :cond_7
    iget-object v2, p0, Livt;->g:[Livu;

    if-eqz v2, :cond_9

    iget-object v2, p0, Livt;->g:[Livu;

    array-length v2, v2

    if-lez v2, :cond_9

    .line 5190
    :goto_1
    iget-object v2, p0, Livt;->g:[Livu;

    array-length v2, v2

    if-ge v1, v2, :cond_9

    .line 5191
    iget-object v2, p0, Livt;->g:[Livu;

    aget-object v2, v2, v1

    .line 5192
    if-eqz v2, :cond_8

    .line 5193
    const/4 v3, 0x7

    .line 5194
    invoke-static {v3, v2}, Llxz;->d(ILlyi;)I

    move-result v2

    add-int/2addr v0, v2

    .line 5190
    :cond_8
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 5198
    :cond_9
    return v0
.end method
