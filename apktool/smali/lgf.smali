.class public final Llgf;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Llgf;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile f:[Llgf;


# instance fields
.field public a:I

.field public b:Llfu;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Llfu;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 48
    invoke-direct {p0}, Llyb;-><init>()V

    .line 49
    const/high16 v0, -0x80000000

    iput v0, p0, Llgf;->a:I

    .line 50
    iput-object v1, p0, Llgf;->b:Llfu;

    .line 51
    iput-object v1, p0, Llgf;->c:Ljava/lang/String;

    .line 52
    iput-object v1, p0, Llgf;->d:Ljava/lang/String;

    .line 53
    iput-object v1, p0, Llgf;->e:Llfu;

    .line 54
    iput-object v1, p0, Llgf;->eD:Llyd;

    .line 55
    const/4 v0, -0x1

    iput v0, p0, Llgf;->eE:I

    .line 56
    return-void
.end method

.method public static d()[Llgf;
    .locals 2

    .prologue
    .line 20
    sget-object v0, Llgf;->f:[Llgf;

    if-nez v0, :cond_1

    .line 21
    sget-object v1, Llyf;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 23
    :try_start_0
    sget-object v0, Llgf;->f:[Llgf;

    if-nez v0, :cond_0

    .line 24
    const/4 v0, 0x0

    new-array v0, v0, [Llgf;

    sput-object v0, Llgf;->f:[Llgf;

    .line 26
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    :cond_1
    sget-object v0, Llgf;->f:[Llgf;

    return-object v0

    .line 26
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
    .line 1110
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 1111
    sparse-switch v0, :sswitch_data_0

    .line 1115
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1116
    :sswitch_0
    return-object p0

    .line 1121
    :sswitch_1
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    .line 1122
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 1127
    :pswitch_0
    iput v0, p0, Llgf;->a:I

    goto :goto_0

    .line 1133
    :sswitch_2
    iget-object v0, p0, Llgf;->b:Llfu;

    if-nez v0, :cond_1

    .line 1134
    new-instance v0, Llfu;

    invoke-direct {v0}, Llfu;-><init>()V

    iput-object v0, p0, Llgf;->b:Llfu;

    .line 1136
    :cond_1
    iget-object v0, p0, Llgf;->b:Llfu;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 1140
    :sswitch_3
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Llgf;->c:Ljava/lang/String;

    goto :goto_0

    .line 1144
    :sswitch_4
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Llgf;->d:Ljava/lang/String;

    goto :goto_0

    .line 1148
    :sswitch_5
    iget-object v0, p0, Llgf;->e:Llfu;

    if-nez v0, :cond_2

    .line 1149
    new-instance v0, Llfu;

    invoke-direct {v0}, Llfu;-><init>()V

    iput-object v0, p0, Llgf;->e:Llfu;

    .line 1151
    :cond_2
    iget-object v0, p0, Llgf;->e:Llfu;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 1111
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
        0x2a -> :sswitch_5
    .end sparse-switch

    .line 1122
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public a(Llxz;)V
    .locals 2

    .prologue
    .line 61
    iget v0, p0, Llgf;->a:I

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_0

    .line 62
    const/4 v0, 0x1

    iget v1, p0, Llgf;->a:I

    invoke-virtual {p1, v0, v1}, Llxz;->a(II)V

    .line 64
    :cond_0
    iget-object v0, p0, Llgf;->b:Llfu;

    if-eqz v0, :cond_1

    .line 65
    const/4 v0, 0x2

    iget-object v1, p0, Llgf;->b:Llfu;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 67
    :cond_1
    iget-object v0, p0, Llgf;->c:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 68
    const/4 v0, 0x3

    iget-object v1, p0, Llgf;->c:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 70
    :cond_2
    iget-object v0, p0, Llgf;->d:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 71
    const/4 v0, 0x4

    iget-object v1, p0, Llgf;->d:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 73
    :cond_3
    iget-object v0, p0, Llgf;->e:Llfu;

    if-eqz v0, :cond_4

    .line 74
    const/4 v0, 0x5

    iget-object v1, p0, Llgf;->e:Llfu;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 76
    :cond_4
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 77
    return-void
.end method

.method protected b()I
    .locals 3

    .prologue
    .line 81
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 82
    iget v1, p0, Llgf;->a:I

    const/high16 v2, -0x80000000

    if-eq v1, v2, :cond_0

    .line 83
    const/4 v1, 0x1

    iget v2, p0, Llgf;->a:I

    .line 84
    invoke-static {v1, v2}, Llxz;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 86
    :cond_0
    iget-object v1, p0, Llgf;->b:Llfu;

    if-eqz v1, :cond_1

    .line 87
    const/4 v1, 0x2

    iget-object v2, p0, Llgf;->b:Llfu;

    .line 88
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 90
    :cond_1
    iget-object v1, p0, Llgf;->c:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 91
    const/4 v1, 0x3

    iget-object v2, p0, Llgf;->c:Ljava/lang/String;

    .line 92
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 94
    :cond_2
    iget-object v1, p0, Llgf;->d:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 95
    const/4 v1, 0x4

    iget-object v2, p0, Llgf;->d:Ljava/lang/String;

    .line 96
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 98
    :cond_3
    iget-object v1, p0, Llgf;->e:Llfu;

    if-eqz v1, :cond_4

    .line 99
    const/4 v1, 0x5

    iget-object v2, p0, Llgf;->e:Llfu;

    .line 100
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 102
    :cond_4
    return v0
.end method
