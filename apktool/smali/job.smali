.class public final Ljob;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Ljob;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile g:[Ljob;


# instance fields
.field public a:Ljoc;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljlm;

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 43
    invoke-direct {p0}, Llyb;-><init>()V

    .line 44
    iput-object v0, p0, Ljob;->a:Ljoc;

    .line 45
    iput-object v0, p0, Ljob;->b:Ljava/lang/String;

    .line 46
    iput-object v0, p0, Ljob;->c:Ljava/lang/String;

    .line 47
    iput-object v0, p0, Ljob;->d:Ljlm;

    .line 48
    iput-object v0, p0, Ljob;->e:Ljava/lang/String;

    .line 49
    iput-object v0, p0, Ljob;->f:Ljava/lang/String;

    .line 50
    iput-object v0, p0, Ljob;->eD:Llyd;

    .line 51
    const/4 v0, -0x1

    iput v0, p0, Ljob;->eE:I

    .line 52
    return-void
.end method

.method public static d()[Ljob;
    .locals 2

    .prologue
    .line 12
    sget-object v0, Ljob;->g:[Ljob;

    if-nez v0, :cond_1

    .line 13
    sget-object v1, Llyf;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 15
    :try_start_0
    sget-object v0, Ljob;->g:[Ljob;

    if-nez v0, :cond_0

    .line 16
    const/4 v0, 0x0

    new-array v0, v0, [Ljob;

    sput-object v0, Ljob;->g:[Ljob;

    .line 18
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    :cond_1
    sget-object v0, Ljob;->g:[Ljob;

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
    .line 1113
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 1114
    sparse-switch v0, :sswitch_data_0

    .line 1118
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1119
    :sswitch_0
    return-object p0

    .line 1124
    :sswitch_1
    iget-object v0, p0, Ljob;->a:Ljoc;

    if-nez v0, :cond_1

    .line 1125
    new-instance v0, Ljoc;

    invoke-direct {v0}, Ljoc;-><init>()V

    iput-object v0, p0, Ljob;->a:Ljoc;

    .line 1127
    :cond_1
    iget-object v0, p0, Ljob;->a:Ljoc;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 1131
    :sswitch_2
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljob;->b:Ljava/lang/String;

    goto :goto_0

    .line 1135
    :sswitch_3
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljob;->c:Ljava/lang/String;

    goto :goto_0

    .line 1139
    :sswitch_4
    iget-object v0, p0, Ljob;->d:Ljlm;

    if-nez v0, :cond_2

    .line 1140
    new-instance v0, Ljlm;

    invoke-direct {v0}, Ljlm;-><init>()V

    iput-object v0, p0, Ljob;->d:Ljlm;

    .line 1142
    :cond_2
    iget-object v0, p0, Ljob;->d:Ljlm;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 1146
    :sswitch_5
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljob;->e:Ljava/lang/String;

    goto :goto_0

    .line 1150
    :sswitch_6
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljob;->f:Ljava/lang/String;

    goto :goto_0

    .line 1114
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
        0x2a -> :sswitch_5
        0x32 -> :sswitch_6
    .end sparse-switch
.end method

.method public a(Llxz;)V
    .locals 2

    .prologue
    .line 57
    iget-object v0, p0, Ljob;->a:Ljoc;

    if-eqz v0, :cond_0

    .line 58
    const/4 v0, 0x1

    iget-object v1, p0, Ljob;->a:Ljoc;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 60
    :cond_0
    iget-object v0, p0, Ljob;->b:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 61
    const/4 v0, 0x2

    iget-object v1, p0, Ljob;->b:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 63
    :cond_1
    iget-object v0, p0, Ljob;->c:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 64
    const/4 v0, 0x3

    iget-object v1, p0, Ljob;->c:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 66
    :cond_2
    iget-object v0, p0, Ljob;->d:Ljlm;

    if-eqz v0, :cond_3

    .line 67
    const/4 v0, 0x4

    iget-object v1, p0, Ljob;->d:Ljlm;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 69
    :cond_3
    iget-object v0, p0, Ljob;->e:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 70
    const/4 v0, 0x5

    iget-object v1, p0, Ljob;->e:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 72
    :cond_4
    iget-object v0, p0, Ljob;->f:Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 73
    const/4 v0, 0x6

    iget-object v1, p0, Ljob;->f:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 75
    :cond_5
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 76
    return-void
.end method

.method protected b()I
    .locals 3

    .prologue
    .line 80
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 81
    iget-object v1, p0, Ljob;->a:Ljoc;

    if-eqz v1, :cond_0

    .line 82
    const/4 v1, 0x1

    iget-object v2, p0, Ljob;->a:Ljoc;

    .line 83
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 85
    :cond_0
    iget-object v1, p0, Ljob;->b:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 86
    const/4 v1, 0x2

    iget-object v2, p0, Ljob;->b:Ljava/lang/String;

    .line 87
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 89
    :cond_1
    iget-object v1, p0, Ljob;->c:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 90
    const/4 v1, 0x3

    iget-object v2, p0, Ljob;->c:Ljava/lang/String;

    .line 91
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 93
    :cond_2
    iget-object v1, p0, Ljob;->d:Ljlm;

    if-eqz v1, :cond_3

    .line 94
    const/4 v1, 0x4

    iget-object v2, p0, Ljob;->d:Ljlm;

    .line 95
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 97
    :cond_3
    iget-object v1, p0, Ljob;->e:Ljava/lang/String;

    if-eqz v1, :cond_4

    .line 98
    const/4 v1, 0x5

    iget-object v2, p0, Ljob;->e:Ljava/lang/String;

    .line 99
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 101
    :cond_4
    iget-object v1, p0, Ljob;->f:Ljava/lang/String;

    if-eqz v1, :cond_5

    .line 102
    const/4 v1, 0x6

    iget-object v2, p0, Ljob;->f:Ljava/lang/String;

    .line 103
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 105
    :cond_5
    return v0
.end method
