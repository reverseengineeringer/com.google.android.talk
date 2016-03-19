.class public final Ljcm;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Ljcm;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile e:[Ljcm;


# instance fields
.field public a:Ljbn;

.field public b:Ljas;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 8130
    invoke-direct {p0}, Llyb;-><init>()V

    .line 9135
    iput-object v0, p0, Ljcm;->a:Ljbn;

    .line 9136
    iput-object v0, p0, Ljcm;->b:Ljas;

    .line 9137
    iput-object v0, p0, Ljcm;->c:Ljava/lang/String;

    .line 9138
    iput-object v0, p0, Ljcm;->d:Ljava/lang/Integer;

    .line 9139
    iput-object v0, p0, Ljcm;->eD:Llyd;

    .line 9140
    const/4 v0, -0x1

    iput v0, p0, Ljcm;->eE:I

    .line 8132
    return-void
.end method

.method public static d()[Ljcm;
    .locals 2

    .prologue
    .line 8105
    sget-object v0, Ljcm;->e:[Ljcm;

    if-nez v0, :cond_1

    .line 8106
    sget-object v1, Llyf;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 8108
    :try_start_0
    sget-object v0, Ljcm;->e:[Ljcm;

    if-nez v0, :cond_0

    .line 8109
    const/4 v0, 0x0

    new-array v0, v0, [Ljcm;

    sput-object v0, Ljcm;->e:[Ljcm;

    .line 8111
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8113
    :cond_1
    sget-object v0, Ljcm;->e:[Ljcm;

    return-object v0

    .line 8111
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
    .line 9189
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 9190
    sparse-switch v0, :sswitch_data_0

    .line 9194
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 9195
    :sswitch_0
    return-object p0

    .line 9200
    :sswitch_1
    iget-object v0, p0, Ljcm;->a:Ljbn;

    if-nez v0, :cond_1

    .line 9201
    new-instance v0, Ljbn;

    invoke-direct {v0}, Ljbn;-><init>()V

    iput-object v0, p0, Ljcm;->a:Ljbn;

    .line 9203
    :cond_1
    iget-object v0, p0, Ljcm;->a:Ljbn;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 9207
    :sswitch_2
    iget-object v0, p0, Ljcm;->b:Ljas;

    if-nez v0, :cond_2

    .line 9208
    new-instance v0, Ljas;

    invoke-direct {v0}, Ljas;-><init>()V

    iput-object v0, p0, Ljcm;->b:Ljas;

    .line 9210
    :cond_2
    iget-object v0, p0, Ljcm;->b:Ljas;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 9214
    :sswitch_3
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljcm;->c:Ljava/lang/String;

    goto :goto_0

    .line 9218
    :sswitch_4
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    .line 9219
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 9241
    :pswitch_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Ljcm;->d:Ljava/lang/Integer;

    goto :goto_0

    .line 9190
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x20 -> :sswitch_4
    .end sparse-switch

    .line 9219
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
    .locals 2

    .prologue
    .line 8147
    iget-object v0, p0, Ljcm;->a:Ljbn;

    if-eqz v0, :cond_0

    .line 8148
    const/4 v0, 0x1

    iget-object v1, p0, Ljcm;->a:Ljbn;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 8150
    :cond_0
    iget-object v0, p0, Ljcm;->b:Ljas;

    if-eqz v0, :cond_1

    .line 8151
    const/4 v0, 0x2

    iget-object v1, p0, Ljcm;->b:Ljas;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 8153
    :cond_1
    iget-object v0, p0, Ljcm;->c:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 8154
    const/4 v0, 0x3

    iget-object v1, p0, Ljcm;->c:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 8156
    :cond_2
    iget-object v0, p0, Ljcm;->d:Ljava/lang/Integer;

    if-eqz v0, :cond_3

    .line 8157
    const/4 v0, 0x4

    iget-object v1, p0, Ljcm;->d:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(II)V

    .line 8159
    :cond_3
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 8160
    return-void
.end method

.method protected b()I
    .locals 3

    .prologue
    .line 8164
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 8165
    iget-object v1, p0, Ljcm;->a:Ljbn;

    if-eqz v1, :cond_0

    .line 8166
    const/4 v1, 0x1

    iget-object v2, p0, Ljcm;->a:Ljbn;

    .line 8167
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 8169
    :cond_0
    iget-object v1, p0, Ljcm;->b:Ljas;

    if-eqz v1, :cond_1

    .line 8170
    const/4 v1, 0x2

    iget-object v2, p0, Ljcm;->b:Ljas;

    .line 8171
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 8173
    :cond_1
    iget-object v1, p0, Ljcm;->c:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 8174
    const/4 v1, 0x3

    iget-object v2, p0, Ljcm;->c:Ljava/lang/String;

    .line 8175
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 8177
    :cond_2
    iget-object v1, p0, Ljcm;->d:Ljava/lang/Integer;

    if-eqz v1, :cond_3

    .line 8178
    const/4 v1, 0x4

    iget-object v2, p0, Ljcm;->d:Ljava/lang/Integer;

    .line 8179
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Llxz;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 8181
    :cond_3
    return v0
.end method
