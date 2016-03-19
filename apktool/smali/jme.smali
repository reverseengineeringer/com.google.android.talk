.class public final Ljme;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Ljme;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile d:[Ljme;


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 34
    invoke-direct {p0}, Llyb;-><init>()V

    .line 35
    iput-object v0, p0, Ljme;->a:Ljava/lang/String;

    .line 36
    iput-object v0, p0, Ljme;->b:Ljava/lang/String;

    .line 37
    iput-object v0, p0, Ljme;->c:Ljava/lang/String;

    .line 38
    iput-object v0, p0, Ljme;->eD:Llyd;

    .line 39
    const/4 v0, -0x1

    iput v0, p0, Ljme;->eE:I

    .line 40
    return-void
.end method

.method public static d()[Ljme;
    .locals 2

    .prologue
    .line 12
    sget-object v0, Ljme;->d:[Ljme;

    if-nez v0, :cond_1

    .line 13
    sget-object v1, Llyf;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 15
    :try_start_0
    sget-object v0, Ljme;->d:[Ljme;

    if-nez v0, :cond_0

    .line 16
    const/4 v0, 0x0

    new-array v0, v0, [Ljme;

    sput-object v0, Ljme;->d:[Ljme;

    .line 18
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    :cond_1
    sget-object v0, Ljme;->d:[Ljme;

    return-object v0

    .line 18
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
    .line 1072
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 1073
    sparse-switch v0, :sswitch_data_0

    .line 1077
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1078
    :sswitch_0
    return-object p0

    .line 1083
    :sswitch_1
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljme;->a:Ljava/lang/String;

    goto :goto_0

    .line 1087
    :sswitch_2
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljme;->b:Ljava/lang/String;

    goto :goto_0

    .line 1091
    :sswitch_3
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljme;->c:Ljava/lang/String;

    goto :goto_0

    .line 1073
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
    .line 45
    const/4 v0, 0x1

    iget-object v1, p0, Ljme;->a:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 46
    const/4 v0, 0x2

    iget-object v1, p0, Ljme;->b:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 47
    iget-object v0, p0, Ljme;->c:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 48
    const/4 v0, 0x3

    iget-object v1, p0, Ljme;->c:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 50
    :cond_0
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 51
    return-void
.end method

.method protected b()I
    .locals 3

    .prologue
    .line 55
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 56
    const/4 v1, 0x1

    iget-object v2, p0, Ljme;->a:Ljava/lang/String;

    .line 57
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 58
    const/4 v1, 0x2

    iget-object v2, p0, Ljme;->b:Ljava/lang/String;

    .line 59
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 60
    iget-object v1, p0, Ljme;->c:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 61
    const/4 v1, 0x3

    iget-object v2, p0, Ljme;->c:Ljava/lang/String;

    .line 62
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 64
    :cond_0
    return v0
.end method
