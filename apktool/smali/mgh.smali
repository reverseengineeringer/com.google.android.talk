.class public final Lmgh;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Lmgh;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile d:[Lmgh;


# instance fields
.field public a:Ljava/lang/Integer;

.field public b:Ljava/lang/Boolean;

.field public c:Lmgi;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1049
    invoke-direct {p0}, Llyb;-><init>()V

    .line 2054
    iput-object v0, p0, Lmgh;->a:Ljava/lang/Integer;

    .line 2055
    iput-object v0, p0, Lmgh;->b:Ljava/lang/Boolean;

    .line 2056
    iput-object v0, p0, Lmgh;->c:Lmgi;

    .line 2057
    iput-object v0, p0, Lmgh;->eD:Llyd;

    .line 2058
    const/4 v0, -0x1

    iput v0, p0, Lmgh;->eE:I

    .line 1051
    return-void
.end method

.method public static d()[Lmgh;
    .locals 2

    .prologue
    .line 1027
    sget-object v0, Lmgh;->d:[Lmgh;

    if-nez v0, :cond_1

    .line 1028
    sget-object v1, Llyf;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 1030
    :try_start_0
    sget-object v0, Lmgh;->d:[Lmgh;

    if-nez v0, :cond_0

    .line 1031
    const/4 v0, 0x0

    new-array v0, v0, [Lmgh;

    sput-object v0, Lmgh;->d:[Lmgh;

    .line 1033
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1035
    :cond_1
    sget-object v0, Lmgh;->d:[Lmgh;

    return-object v0

    .line 1033
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
    .line 3100
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 3101
    sparse-switch v0, :sswitch_data_0

    .line 3105
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3106
    :sswitch_0
    return-object p0

    .line 3111
    :sswitch_1
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    .line 3112
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 3115
    :pswitch_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lmgh;->a:Ljava/lang/Integer;

    goto :goto_0

    .line 3121
    :sswitch_2
    invoke-virtual {p1}, Llxy;->i()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lmgh;->b:Ljava/lang/Boolean;

    goto :goto_0

    .line 3125
    :sswitch_3
    iget-object v0, p0, Lmgh;->c:Lmgi;

    if-nez v0, :cond_1

    .line 3126
    new-instance v0, Lmgi;

    invoke-direct {v0}, Lmgi;-><init>()V

    iput-object v0, p0, Lmgh;->c:Lmgi;

    .line 3128
    :cond_1
    iget-object v0, p0, Lmgh;->c:Lmgi;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 3101
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x1a -> :sswitch_3
    .end sparse-switch

    .line 3112
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public a(Llxz;)V
    .locals 2

    .prologue
    .line 1065
    iget-object v0, p0, Lmgh;->a:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 1066
    const/4 v0, 0x1

    iget-object v1, p0, Lmgh;->a:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(II)V

    .line 1068
    :cond_0
    iget-object v0, p0, Lmgh;->b:Ljava/lang/Boolean;

    if-eqz v0, :cond_1

    .line 1069
    const/4 v0, 0x2

    iget-object v1, p0, Lmgh;->b:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(IZ)V

    .line 1071
    :cond_1
    iget-object v0, p0, Lmgh;->c:Lmgi;

    if-eqz v0, :cond_2

    .line 1072
    const/4 v0, 0x3

    iget-object v1, p0, Lmgh;->c:Lmgi;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 1074
    :cond_2
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 1075
    return-void
.end method

.method protected b()I
    .locals 3

    .prologue
    .line 1079
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 1080
    iget-object v1, p0, Lmgh;->a:Ljava/lang/Integer;

    if-eqz v1, :cond_0

    .line 1081
    const/4 v1, 0x1

    iget-object v2, p0, Lmgh;->a:Ljava/lang/Integer;

    .line 1082
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Llxz;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1084
    :cond_0
    iget-object v1, p0, Lmgh;->b:Ljava/lang/Boolean;

    if-eqz v1, :cond_1

    .line 1085
    const/4 v1, 0x2

    iget-object v2, p0, Lmgh;->b:Ljava/lang/Boolean;

    .line 1086
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 2620
    invoke-static {v1}, Llxz;->f(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 1086
    add-int/2addr v0, v1

    .line 1088
    :cond_1
    iget-object v1, p0, Lmgh;->c:Lmgi;

    if-eqz v1, :cond_2

    .line 1089
    const/4 v1, 0x3

    iget-object v2, p0, Lmgh;->c:Lmgi;

    .line 1090
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1092
    :cond_2
    return v0
.end method
