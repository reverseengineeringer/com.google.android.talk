.class public final Lllk;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Lllk;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile d:[Lllk;


# instance fields
.field public a:Ljava/lang/Integer;

.field public b:Ljava/lang/Integer;

.field public c:Llll;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1004
    invoke-direct {p0}, Llyb;-><init>()V

    .line 2009
    iput-object v0, p0, Lllk;->a:Ljava/lang/Integer;

    .line 2010
    iput-object v0, p0, Lllk;->b:Ljava/lang/Integer;

    .line 2011
    iput-object v0, p0, Lllk;->c:Llll;

    .line 2012
    iput-object v0, p0, Lllk;->eD:Llyd;

    .line 2013
    const/4 v0, -0x1

    iput v0, p0, Lllk;->eE:I

    .line 1006
    return-void
.end method

.method public static d()[Lllk;
    .locals 2

    .prologue
    .line 982
    sget-object v0, Lllk;->d:[Lllk;

    if-nez v0, :cond_1

    .line 983
    sget-object v1, Llyf;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 985
    :try_start_0
    sget-object v0, Lllk;->d:[Lllk;

    if-nez v0, :cond_0

    .line 986
    const/4 v0, 0x0

    new-array v0, v0, [Lllk;

    sput-object v0, Lllk;->d:[Lllk;

    .line 988
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 990
    :cond_1
    sget-object v0, Lllk;->d:[Lllk;

    return-object v0

    .line 988
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
    .line 2055
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 2056
    sparse-switch v0, :sswitch_data_0

    .line 2060
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2061
    :sswitch_0
    return-object p0

    .line 2066
    :sswitch_1
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    .line 2067
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 2072
    :pswitch_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lllk;->a:Ljava/lang/Integer;

    goto :goto_0

    .line 2078
    :sswitch_2
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    .line 2079
    packed-switch v0, :pswitch_data_1

    goto :goto_0

    .line 2083
    :pswitch_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lllk;->b:Ljava/lang/Integer;

    goto :goto_0

    .line 2089
    :sswitch_3
    iget-object v0, p0, Lllk;->c:Llll;

    if-nez v0, :cond_1

    .line 2090
    new-instance v0, Llll;

    invoke-direct {v0}, Llll;-><init>()V

    iput-object v0, p0, Lllk;->c:Llll;

    .line 2092
    :cond_1
    iget-object v0, p0, Lllk;->c:Llll;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 2056
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x1a -> :sswitch_3
    .end sparse-switch

    .line 2067
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    .line 2079
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public a(Llxz;)V
    .locals 2

    .prologue
    .line 1020
    iget-object v0, p0, Lllk;->a:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 1021
    const/4 v0, 0x1

    iget-object v1, p0, Lllk;->a:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(II)V

    .line 1023
    :cond_0
    iget-object v0, p0, Lllk;->b:Ljava/lang/Integer;

    if-eqz v0, :cond_1

    .line 1024
    const/4 v0, 0x2

    iget-object v1, p0, Lllk;->b:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(II)V

    .line 1026
    :cond_1
    iget-object v0, p0, Lllk;->c:Llll;

    if-eqz v0, :cond_2

    .line 1027
    const/4 v0, 0x3

    iget-object v1, p0, Lllk;->c:Llll;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 1029
    :cond_2
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 1030
    return-void
.end method

.method protected b()I
    .locals 3

    .prologue
    .line 1034
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 1035
    iget-object v1, p0, Lllk;->a:Ljava/lang/Integer;

    if-eqz v1, :cond_0

    .line 1036
    const/4 v1, 0x1

    iget-object v2, p0, Lllk;->a:Ljava/lang/Integer;

    .line 1037
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Llxz;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1039
    :cond_0
    iget-object v1, p0, Lllk;->b:Ljava/lang/Integer;

    if-eqz v1, :cond_1

    .line 1040
    const/4 v1, 0x2

    iget-object v2, p0, Lllk;->b:Ljava/lang/Integer;

    .line 1041
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Llxz;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1043
    :cond_1
    iget-object v1, p0, Lllk;->c:Llll;

    if-eqz v1, :cond_2

    .line 1044
    const/4 v1, 0x3

    iget-object v2, p0, Lllk;->c:Llll;

    .line 1045
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1047
    :cond_2
    return v0
.end method
