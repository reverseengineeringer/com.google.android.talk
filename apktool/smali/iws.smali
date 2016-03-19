.class public final Liws;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Liws;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile e:[Liws;


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Lixc;

.field public d:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 9111
    invoke-direct {p0}, Llyb;-><init>()V

    .line 10116
    iput-object v0, p0, Liws;->a:Ljava/lang/String;

    .line 10117
    iput-object v0, p0, Liws;->b:Ljava/lang/String;

    .line 10118
    iput-object v0, p0, Liws;->c:Lixc;

    .line 10119
    iput-object v0, p0, Liws;->d:Ljava/lang/Integer;

    .line 10120
    iput-object v0, p0, Liws;->eD:Llyd;

    .line 10121
    const/4 v0, -0x1

    iput v0, p0, Liws;->eE:I

    .line 9113
    return-void
.end method

.method public static d()[Liws;
    .locals 2

    .prologue
    .line 9086
    sget-object v0, Liws;->e:[Liws;

    if-nez v0, :cond_1

    .line 9087
    sget-object v1, Llyf;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 9089
    :try_start_0
    sget-object v0, Liws;->e:[Liws;

    if-nez v0, :cond_0

    .line 9090
    const/4 v0, 0x0

    new-array v0, v0, [Liws;

    sput-object v0, Liws;->e:[Liws;

    .line 9092
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9094
    :cond_1
    sget-object v0, Liws;->e:[Liws;

    return-object v0

    .line 9092
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
    .line 10170
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 10171
    sparse-switch v0, :sswitch_data_0

    .line 10175
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 10176
    :sswitch_0
    return-object p0

    .line 10181
    :sswitch_1
    iget-object v0, p0, Liws;->c:Lixc;

    if-nez v0, :cond_1

    .line 10182
    new-instance v0, Lixc;

    invoke-direct {v0}, Lixc;-><init>()V

    iput-object v0, p0, Liws;->c:Lixc;

    .line 10184
    :cond_1
    iget-object v0, p0, Liws;->c:Lixc;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 10188
    :sswitch_2
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Liws;->a:Ljava/lang/String;

    goto :goto_0

    .line 10192
    :sswitch_3
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Liws;->b:Ljava/lang/String;

    goto :goto_0

    .line 10196
    :sswitch_4
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    .line 10197
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 10204
    :pswitch_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Liws;->d:Ljava/lang/Integer;

    goto :goto_0

    .line 10171
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x20 -> :sswitch_4
    .end sparse-switch

    .line 10197
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public a(Llxz;)V
    .locals 2

    .prologue
    .line 9128
    iget-object v0, p0, Liws;->c:Lixc;

    if-eqz v0, :cond_0

    .line 9129
    const/4 v0, 0x1

    iget-object v1, p0, Liws;->c:Lixc;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 9131
    :cond_0
    iget-object v0, p0, Liws;->a:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 9132
    const/4 v0, 0x2

    iget-object v1, p0, Liws;->a:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 9134
    :cond_1
    iget-object v0, p0, Liws;->b:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 9135
    const/4 v0, 0x3

    iget-object v1, p0, Liws;->b:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 9137
    :cond_2
    iget-object v0, p0, Liws;->d:Ljava/lang/Integer;

    if-eqz v0, :cond_3

    .line 9138
    const/4 v0, 0x4

    iget-object v1, p0, Liws;->d:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(II)V

    .line 9140
    :cond_3
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 9141
    return-void
.end method

.method protected b()I
    .locals 3

    .prologue
    .line 9145
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 9146
    iget-object v1, p0, Liws;->c:Lixc;

    if-eqz v1, :cond_0

    .line 9147
    const/4 v1, 0x1

    iget-object v2, p0, Liws;->c:Lixc;

    .line 9148
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 9150
    :cond_0
    iget-object v1, p0, Liws;->a:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 9151
    const/4 v1, 0x2

    iget-object v2, p0, Liws;->a:Ljava/lang/String;

    .line 9152
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 9154
    :cond_1
    iget-object v1, p0, Liws;->b:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 9155
    const/4 v1, 0x3

    iget-object v2, p0, Liws;->b:Ljava/lang/String;

    .line 9156
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 9158
    :cond_2
    iget-object v1, p0, Liws;->d:Ljava/lang/Integer;

    if-eqz v1, :cond_3

    .line 9159
    const/4 v1, 0x4

    iget-object v2, p0, Liws;->d:Ljava/lang/Integer;

    .line 9160
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Llxz;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 9162
    :cond_3
    return v0
.end method
