.class public final Llpn;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Llpn;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile e:[Llpn;


# instance fields
.field public a:Llps;

.field public b:Llfu;

.field public c:Llpo;

.field public d:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 37
    invoke-direct {p0}, Llyb;-><init>()V

    .line 38
    iput-object v0, p0, Llpn;->a:Llps;

    .line 39
    iput-object v0, p0, Llpn;->b:Llfu;

    .line 40
    iput-object v0, p0, Llpn;->c:Llpo;

    .line 41
    iput-object v0, p0, Llpn;->d:Ljava/lang/String;

    .line 42
    iput-object v0, p0, Llpn;->eD:Llyd;

    .line 43
    const/4 v0, -0x1

    iput v0, p0, Llpn;->eE:I

    .line 44
    return-void
.end method

.method public static d()[Llpn;
    .locals 2

    .prologue
    .line 12
    sget-object v0, Llpn;->e:[Llpn;

    if-nez v0, :cond_1

    .line 13
    sget-object v1, Llyf;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 15
    :try_start_0
    sget-object v0, Llpn;->e:[Llpn;

    if-nez v0, :cond_0

    .line 16
    const/4 v0, 0x0

    new-array v0, v0, [Llpn;

    sput-object v0, Llpn;->e:[Llpn;

    .line 18
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    :cond_1
    sget-object v0, Llpn;->e:[Llpn;

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
    .line 1091
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 1092
    sparse-switch v0, :sswitch_data_0

    .line 1096
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1097
    :sswitch_0
    return-object p0

    .line 1102
    :sswitch_1
    iget-object v0, p0, Llpn;->a:Llps;

    if-nez v0, :cond_1

    .line 1103
    new-instance v0, Llps;

    invoke-direct {v0}, Llps;-><init>()V

    iput-object v0, p0, Llpn;->a:Llps;

    .line 1105
    :cond_1
    iget-object v0, p0, Llpn;->a:Llps;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 1109
    :sswitch_2
    iget-object v0, p0, Llpn;->b:Llfu;

    if-nez v0, :cond_2

    .line 1110
    new-instance v0, Llfu;

    invoke-direct {v0}, Llfu;-><init>()V

    iput-object v0, p0, Llpn;->b:Llfu;

    .line 1112
    :cond_2
    iget-object v0, p0, Llpn;->b:Llfu;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 1116
    :sswitch_3
    iget-object v0, p0, Llpn;->c:Llpo;

    if-nez v0, :cond_3

    .line 1117
    new-instance v0, Llpo;

    invoke-direct {v0}, Llpo;-><init>()V

    iput-object v0, p0, Llpn;->c:Llpo;

    .line 1119
    :cond_3
    iget-object v0, p0, Llpn;->c:Llpo;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 1123
    :sswitch_4
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Llpn;->d:Ljava/lang/String;

    goto :goto_0

    .line 1092
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
    .end sparse-switch
.end method

.method public a(Llxz;)V
    .locals 2

    .prologue
    .line 49
    iget-object v0, p0, Llpn;->a:Llps;

    if-eqz v0, :cond_0

    .line 50
    const/4 v0, 0x1

    iget-object v1, p0, Llpn;->a:Llps;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 52
    :cond_0
    iget-object v0, p0, Llpn;->b:Llfu;

    if-eqz v0, :cond_1

    .line 53
    const/4 v0, 0x2

    iget-object v1, p0, Llpn;->b:Llfu;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 55
    :cond_1
    iget-object v0, p0, Llpn;->c:Llpo;

    if-eqz v0, :cond_2

    .line 56
    const/4 v0, 0x3

    iget-object v1, p0, Llpn;->c:Llpo;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 58
    :cond_2
    iget-object v0, p0, Llpn;->d:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 59
    const/4 v0, 0x4

    iget-object v1, p0, Llpn;->d:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 61
    :cond_3
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 62
    return-void
.end method

.method protected b()I
    .locals 3

    .prologue
    .line 66
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 67
    iget-object v1, p0, Llpn;->a:Llps;

    if-eqz v1, :cond_0

    .line 68
    const/4 v1, 0x1

    iget-object v2, p0, Llpn;->a:Llps;

    .line 69
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 71
    :cond_0
    iget-object v1, p0, Llpn;->b:Llfu;

    if-eqz v1, :cond_1

    .line 72
    const/4 v1, 0x2

    iget-object v2, p0, Llpn;->b:Llfu;

    .line 73
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 75
    :cond_1
    iget-object v1, p0, Llpn;->c:Llpo;

    if-eqz v1, :cond_2

    .line 76
    const/4 v1, 0x3

    iget-object v2, p0, Llpn;->c:Llpo;

    .line 77
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 79
    :cond_2
    iget-object v1, p0, Llpn;->d:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 80
    const/4 v1, 0x4

    iget-object v2, p0, Llpn;->d:Ljava/lang/String;

    .line 81
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 83
    :cond_3
    return v0
.end method
