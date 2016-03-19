.class public final Ljlf;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Ljlf;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile d:[Ljlf;


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1021
    invoke-direct {p0}, Llyb;-><init>()V

    .line 2026
    iput-object v0, p0, Ljlf;->a:Ljava/lang/String;

    .line 2027
    iput-object v0, p0, Ljlf;->b:Ljava/lang/String;

    .line 2028
    iput-object v0, p0, Ljlf;->c:Ljava/lang/String;

    .line 2029
    iput-object v0, p0, Ljlf;->eD:Llyd;

    .line 2030
    const/4 v0, -0x1

    iput v0, p0, Ljlf;->eE:I

    .line 1023
    return-void
.end method

.method public static d()[Ljlf;
    .locals 2

    .prologue
    .line 999
    sget-object v0, Ljlf;->d:[Ljlf;

    if-nez v0, :cond_1

    .line 1000
    sget-object v1, Llyf;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 1002
    :try_start_0
    sget-object v0, Ljlf;->d:[Ljlf;

    if-nez v0, :cond_0

    .line 1003
    const/4 v0, 0x0

    new-array v0, v0, [Ljlf;

    sput-object v0, Ljlf;->d:[Ljlf;

    .line 1005
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1007
    :cond_1
    sget-object v0, Ljlf;->d:[Ljlf;

    return-object v0

    .line 1005
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
    .line 2064
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 2065
    sparse-switch v0, :sswitch_data_0

    .line 2069
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2070
    :sswitch_0
    return-object p0

    .line 2075
    :sswitch_1
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljlf;->a:Ljava/lang/String;

    goto :goto_0

    .line 2079
    :sswitch_2
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljlf;->b:Ljava/lang/String;

    goto :goto_0

    .line 2083
    :sswitch_3
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljlf;->c:Ljava/lang/String;

    goto :goto_0

    .line 2065
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
    .end sparse-switch
.end method

.method public a(Llxz;)V
    .locals 2

    .prologue
    .line 1037
    const/4 v0, 0x1

    iget-object v1, p0, Ljlf;->a:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 1038
    const/4 v0, 0x2

    iget-object v1, p0, Ljlf;->b:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 1039
    iget-object v0, p0, Ljlf;->c:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1040
    const/4 v0, 0x3

    iget-object v1, p0, Ljlf;->c:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 1042
    :cond_0
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 1043
    return-void
.end method

.method protected b()I
    .locals 3

    .prologue
    .line 1047
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 1048
    const/4 v1, 0x1

    iget-object v2, p0, Ljlf;->a:Ljava/lang/String;

    .line 1049
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1050
    const/4 v1, 0x2

    iget-object v2, p0, Ljlf;->b:Ljava/lang/String;

    .line 1051
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1052
    iget-object v1, p0, Ljlf;->c:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1053
    const/4 v1, 0x3

    iget-object v2, p0, Ljlf;->c:Ljava/lang/String;

    .line 1054
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1056
    :cond_0
    return v0
.end method
