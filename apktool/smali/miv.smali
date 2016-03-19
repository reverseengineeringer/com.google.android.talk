.class public final Lmiv;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Lmiv;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile f:[Lmiv;


# instance fields
.field public a:Lmks;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 50
    invoke-direct {p0}, Llyb;-><init>()V

    .line 1055
    iput-object v0, p0, Lmiv;->a:Lmks;

    .line 1056
    iput-object v0, p0, Lmiv;->b:Ljava/lang/String;

    .line 1057
    iput-object v0, p0, Lmiv;->c:Ljava/lang/String;

    .line 1058
    iput-object v0, p0, Lmiv;->d:Ljava/lang/String;

    .line 1059
    iput-object v0, p0, Lmiv;->e:Ljava/lang/Integer;

    .line 1060
    iput-object v0, p0, Lmiv;->eD:Llyd;

    .line 1061
    const/4 v0, -0x1

    iput v0, p0, Lmiv;->eE:I

    .line 52
    return-void
.end method

.method public static d()[Lmiv;
    .locals 2

    .prologue
    .line 22
    sget-object v0, Lmiv;->f:[Lmiv;

    if-nez v0, :cond_1

    .line 23
    sget-object v1, Llyf;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 25
    :try_start_0
    sget-object v0, Lmiv;->f:[Lmiv;

    if-nez v0, :cond_0

    .line 26
    const/4 v0, 0x0

    new-array v0, v0, [Lmiv;

    sput-object v0, Lmiv;->f:[Lmiv;

    .line 28
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    :cond_1
    sget-object v0, Lmiv;->f:[Lmiv;

    return-object v0

    .line 28
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
    .line 1117
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 1118
    sparse-switch v0, :sswitch_data_0

    .line 1122
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1123
    :sswitch_0
    return-object p0

    .line 1128
    :sswitch_1
    iget-object v0, p0, Lmiv;->a:Lmks;

    if-nez v0, :cond_1

    .line 1129
    new-instance v0, Lmks;

    invoke-direct {v0}, Lmks;-><init>()V

    iput-object v0, p0, Lmiv;->a:Lmks;

    .line 1131
    :cond_1
    iget-object v0, p0, Lmiv;->a:Lmks;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 1135
    :sswitch_2
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiv;->b:Ljava/lang/String;

    goto :goto_0

    .line 1139
    :sswitch_3
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiv;->c:Ljava/lang/String;

    goto :goto_0

    .line 1143
    :sswitch_4
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiv;->d:Ljava/lang/String;

    goto :goto_0

    .line 1147
    :sswitch_5
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    .line 1148
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 1151
    :pswitch_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lmiv;->e:Ljava/lang/Integer;

    goto :goto_0

    .line 1118
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
        0x28 -> :sswitch_5
    .end sparse-switch

    .line 1148
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public a(Llxz;)V
    .locals 2

    .prologue
    .line 68
    iget-object v0, p0, Lmiv;->a:Lmks;

    if-eqz v0, :cond_0

    .line 69
    const/4 v0, 0x1

    iget-object v1, p0, Lmiv;->a:Lmks;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 71
    :cond_0
    iget-object v0, p0, Lmiv;->b:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 72
    const/4 v0, 0x2

    iget-object v1, p0, Lmiv;->b:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 74
    :cond_1
    iget-object v0, p0, Lmiv;->c:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 75
    const/4 v0, 0x3

    iget-object v1, p0, Lmiv;->c:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 77
    :cond_2
    iget-object v0, p0, Lmiv;->d:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 78
    const/4 v0, 0x4

    iget-object v1, p0, Lmiv;->d:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 80
    :cond_3
    iget-object v0, p0, Lmiv;->e:Ljava/lang/Integer;

    if-eqz v0, :cond_4

    .line 81
    const/4 v0, 0x5

    iget-object v1, p0, Lmiv;->e:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(II)V

    .line 83
    :cond_4
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 84
    return-void
.end method

.method protected b()I
    .locals 3

    .prologue
    .line 88
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 89
    iget-object v1, p0, Lmiv;->a:Lmks;

    if-eqz v1, :cond_0

    .line 90
    const/4 v1, 0x1

    iget-object v2, p0, Lmiv;->a:Lmks;

    .line 91
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 93
    :cond_0
    iget-object v1, p0, Lmiv;->b:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 94
    const/4 v1, 0x2

    iget-object v2, p0, Lmiv;->b:Ljava/lang/String;

    .line 95
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 97
    :cond_1
    iget-object v1, p0, Lmiv;->c:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 98
    const/4 v1, 0x3

    iget-object v2, p0, Lmiv;->c:Ljava/lang/String;

    .line 99
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 101
    :cond_2
    iget-object v1, p0, Lmiv;->d:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 102
    const/4 v1, 0x4

    iget-object v2, p0, Lmiv;->d:Ljava/lang/String;

    .line 103
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 105
    :cond_3
    iget-object v1, p0, Lmiv;->e:Ljava/lang/Integer;

    if-eqz v1, :cond_4

    .line 106
    const/4 v1, 0x5

    iget-object v2, p0, Lmiv;->e:Ljava/lang/Integer;

    .line 107
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Llxz;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 109
    :cond_4
    return v0
.end method
