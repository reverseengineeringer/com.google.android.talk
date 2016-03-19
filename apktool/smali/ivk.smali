.class public final Livk;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Livk;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile d:[Livk;


# instance fields
.field public a:Lixc;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 4056
    invoke-direct {p0}, Llyb;-><init>()V

    .line 5061
    iput-object v0, p0, Livk;->a:Lixc;

    .line 5062
    iput-object v0, p0, Livk;->b:Ljava/lang/String;

    .line 5063
    iput-object v0, p0, Livk;->c:Ljava/lang/Integer;

    .line 5064
    iput-object v0, p0, Livk;->eD:Llyd;

    .line 5065
    const/4 v0, -0x1

    iput v0, p0, Livk;->eE:I

    .line 4058
    return-void
.end method

.method public static d()[Livk;
    .locals 2

    .prologue
    .line 4034
    sget-object v0, Livk;->d:[Livk;

    if-nez v0, :cond_1

    .line 4035
    sget-object v1, Llyf;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 4037
    :try_start_0
    sget-object v0, Livk;->d:[Livk;

    if-nez v0, :cond_0

    .line 4038
    const/4 v0, 0x0

    new-array v0, v0, [Livk;

    sput-object v0, Livk;->d:[Livk;

    .line 4040
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4042
    :cond_1
    sget-object v0, Livk;->d:[Livk;

    return-object v0

    .line 4040
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
    .line 5107
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 5108
    sparse-switch v0, :sswitch_data_0

    .line 5112
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 5113
    :sswitch_0
    return-object p0

    .line 5118
    :sswitch_1
    iget-object v0, p0, Livk;->a:Lixc;

    if-nez v0, :cond_1

    .line 5119
    new-instance v0, Lixc;

    invoke-direct {v0}, Lixc;-><init>()V

    iput-object v0, p0, Livk;->a:Lixc;

    .line 5121
    :cond_1
    iget-object v0, p0, Livk;->a:Lixc;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 5125
    :sswitch_2
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Livk;->b:Ljava/lang/String;

    goto :goto_0

    .line 5129
    :sswitch_3
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    .line 5130
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 5134
    :pswitch_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Livk;->c:Ljava/lang/Integer;

    goto :goto_0

    .line 5108
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x18 -> :sswitch_3
    .end sparse-switch

    .line 5130
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public a(Llxz;)V
    .locals 2

    .prologue
    .line 4072
    iget-object v0, p0, Livk;->a:Lixc;

    if-eqz v0, :cond_0

    .line 4073
    const/4 v0, 0x1

    iget-object v1, p0, Livk;->a:Lixc;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 4075
    :cond_0
    iget-object v0, p0, Livk;->b:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 4076
    const/4 v0, 0x2

    iget-object v1, p0, Livk;->b:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 4078
    :cond_1
    iget-object v0, p0, Livk;->c:Ljava/lang/Integer;

    if-eqz v0, :cond_2

    .line 4079
    const/4 v0, 0x3

    iget-object v1, p0, Livk;->c:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(II)V

    .line 4081
    :cond_2
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 4082
    return-void
.end method

.method protected b()I
    .locals 3

    .prologue
    .line 4086
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 4087
    iget-object v1, p0, Livk;->a:Lixc;

    if-eqz v1, :cond_0

    .line 4088
    const/4 v1, 0x1

    iget-object v2, p0, Livk;->a:Lixc;

    .line 4089
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4091
    :cond_0
    iget-object v1, p0, Livk;->b:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 4092
    const/4 v1, 0x2

    iget-object v2, p0, Livk;->b:Ljava/lang/String;

    .line 4093
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4095
    :cond_1
    iget-object v1, p0, Livk;->c:Ljava/lang/Integer;

    if-eqz v1, :cond_2

    .line 4096
    const/4 v1, 0x3

    iget-object v2, p0, Livk;->c:Ljava/lang/Integer;

    .line 4097
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Llxz;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 4099
    :cond_2
    return v0
.end method
