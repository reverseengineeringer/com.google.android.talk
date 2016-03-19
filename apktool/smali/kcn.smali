.class public final Lkcn;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Lkcn;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile d:[Lkcn;


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/Long;

.field public c:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 39063
    invoke-direct {p0}, Llyb;-><init>()V

    .line 40068
    iput-object v0, p0, Lkcn;->a:Ljava/lang/String;

    .line 40069
    iput-object v0, p0, Lkcn;->b:Ljava/lang/Long;

    .line 40070
    iput-object v0, p0, Lkcn;->c:Ljava/lang/Integer;

    .line 40071
    iput-object v0, p0, Lkcn;->eD:Llyd;

    .line 40072
    const/4 v0, -0x1

    iput v0, p0, Lkcn;->eE:I

    .line 39065
    return-void
.end method

.method public static d()[Lkcn;
    .locals 2

    .prologue
    .line 39041
    sget-object v0, Lkcn;->d:[Lkcn;

    if-nez v0, :cond_1

    .line 39042
    sget-object v1, Llyf;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 39044
    :try_start_0
    sget-object v0, Lkcn;->d:[Lkcn;

    if-nez v0, :cond_0

    .line 39045
    const/4 v0, 0x0

    new-array v0, v0, [Lkcn;

    sput-object v0, Lkcn;->d:[Lkcn;

    .line 39047
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39049
    :cond_1
    sget-object v0, Lkcn;->d:[Lkcn;

    return-object v0

    .line 39047
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
    .locals 2

    .prologue
    .line 40114
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 40115
    sparse-switch v0, :sswitch_data_0

    .line 40119
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 40120
    :sswitch_0
    return-object p0

    .line 40125
    :sswitch_1
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lkcn;->a:Ljava/lang/String;

    goto :goto_0

    .line 40129
    :sswitch_2
    invoke-virtual {p1}, Llxy;->d()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lkcn;->b:Ljava/lang/Long;

    goto :goto_0

    .line 40133
    :sswitch_3
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    .line 40134
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 40138
    :pswitch_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lkcn;->c:Ljava/lang/Integer;

    goto :goto_0

    .line 40115
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
    .end sparse-switch

    .line 40134
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public a(Llxz;)V
    .locals 4

    .prologue
    .line 39079
    iget-object v0, p0, Lkcn;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 39080
    const/4 v0, 0x1

    iget-object v1, p0, Lkcn;->a:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 39082
    :cond_0
    iget-object v0, p0, Lkcn;->b:Ljava/lang/Long;

    if-eqz v0, :cond_1

    .line 39083
    const/4 v0, 0x2

    iget-object v1, p0, Lkcn;->b:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Llxz;->a(IJ)V

    .line 39085
    :cond_1
    iget-object v0, p0, Lkcn;->c:Ljava/lang/Integer;

    if-eqz v0, :cond_2

    .line 39086
    const/4 v0, 0x3

    iget-object v1, p0, Lkcn;->c:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(II)V

    .line 39088
    :cond_2
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 39089
    return-void
.end method

.method protected b()I
    .locals 4

    .prologue
    .line 39093
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 39094
    iget-object v1, p0, Lkcn;->a:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 39095
    const/4 v1, 0x1

    iget-object v2, p0, Lkcn;->a:Ljava/lang/String;

    .line 39096
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 39098
    :cond_0
    iget-object v1, p0, Lkcn;->b:Ljava/lang/Long;

    if-eqz v1, :cond_1

    .line 39099
    const/4 v1, 0x2

    iget-object v2, p0, Lkcn;->b:Ljava/lang/Long;

    .line 39100
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Llxz;->d(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 39102
    :cond_1
    iget-object v1, p0, Lkcn;->c:Ljava/lang/Integer;

    if-eqz v1, :cond_2

    .line 39103
    const/4 v1, 0x3

    iget-object v2, p0, Lkcn;->c:Ljava/lang/Integer;

    .line 39104
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Llxz;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 39106
    :cond_2
    return v0
.end method
