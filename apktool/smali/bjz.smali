.class public final Lbjz;
.super Lhtu;
.source "SourceFile"


# instance fields
.field final a:I

.field private final b:I

.field private final c:Lihb;

.field private final d:Lbfw;

.field private final g:Lbkw;

.field private final h:I

.field private final i:Z

.field private final j:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;ILihb;Lbfw;Lbkw;IZLjava/lang/String;I)V
    .locals 1

    .prologue
    .line 47
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lhtu;-><init>(Ljava/lang/String;B)V

    .line 48
    iput p2, p0, Lbjz;->b:I

    .line 49
    iput-object p3, p0, Lbjz;->c:Lihb;

    .line 50
    iput-object p4, p0, Lbjz;->d:Lbfw;

    .line 51
    iput-object p5, p0, Lbjz;->g:Lbkw;

    .line 52
    iput p6, p0, Lbjz;->h:I

    .line 53
    iput-boolean p7, p0, Lbjz;->i:Z

    .line 54
    iput-object p8, p0, Lbjz;->j:Ljava/lang/String;

    .line 55
    iput p9, p0, Lbjz;->a:I

    .line 56
    return-void
.end method


# virtual methods
.method protected a(Landroid/content/Context;)Lhus;
    .locals 14

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 60
    new-instance v3, Landroid/os/ConditionVariable;

    invoke-direct {v3}, Landroid/os/ConditionVariable;-><init>()V

    .line 61
    new-instance v4, Lbka;

    .line 1094
    invoke-direct {v4, p0, p1, v3}, Lbka;-><init>(Lbjz;Landroid/content/Context;Landroid/os/ConditionVariable;)V

    .line 63
    iget v5, p0, Lbjz;->b:I

    iget-object v6, p0, Lbjz;->c:Lihb;

    iget-object v7, p0, Lbjz;->d:Lbfw;

    iget-object v0, p0, Lbjz;->g:Lbkw;

    iget v8, p0, Lbjz;->h:I

    iget-boolean v9, p0, Lbjz;->i:Z

    iget-object v10, p0, Lbjz;->j:Ljava/lang/String;

    .line 2144
    sget-object v11, Lbkw;->d:Lbkw;

    if-eq v0, v11, :cond_0

    sget-object v11, Lbkw;->c:Lbkw;

    if-ne v0, v11, :cond_1

    :cond_0
    move v0, v2

    .line 2147
    :goto_0
    invoke-static {}, Lebi;->b()Lebi;

    move-result-object v11

    .line 2148
    invoke-virtual {v11}, Lebi;->a()I

    move-result v12

    iput v12, v4, Lbka;->c:I

    .line 2149
    iget v12, v4, Lbka;->c:I

    invoke-virtual {v4, v12}, Lbka;->a(I)V

    .line 2151
    new-instance v12, Ldwb;

    iget-object v13, v4, Lbka;->a:Landroid/content/Context;

    invoke-direct {v12, v13}, Ldwb;-><init>(Landroid/content/Context;)V

    .line 2154
    invoke-virtual {v12, v5}, Ldwb;->a(I)Ldwb;

    move-result-object v5

    .line 2155
    invoke-virtual {v5, v6}, Ldwb;->a(Lihb;)Ldwb;

    move-result-object v5

    .line 2156
    invoke-virtual {v5, v7}, Ldwb;->a(Lbfw;)Ldwb;

    move-result-object v5

    .line 2157
    invoke-virtual {v5, v0}, Ldwb;->a(Z)Ldwb;

    move-result-object v0

    .line 2158
    invoke-virtual {v0, v9}, Ldwb;->b(Z)Ldwb;

    move-result-object v0

    .line 2159
    invoke-virtual {v0, v10}, Ldwb;->a(Ljava/lang/String;)Ldwb;

    move-result-object v0

    iget-object v5, v4, Lbka;->e:Lbjz;

    .line 3027
    iget v5, v5, Lbjz;->a:I

    .line 2160
    invoke-virtual {v0, v5}, Ldwb;->c(I)Ldwb;

    move-result-object v0

    .line 2161
    invoke-virtual {v0, v8}, Ldwb;->b(I)Ldwb;

    move-result-object v0

    .line 2162
    invoke-virtual {v0}, Ldwb;->a()Landroid/content/Intent;

    move-result-object v0

    .line 2151
    invoke-static {v11, v0}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->a(Lebi;Landroid/content/Intent;)V

    .line 65
    invoke-virtual {v3}, Landroid/os/ConditionVariable;->block()V

    .line 3094
    iget-object v0, v4, Lbka;->b:Ljava/lang/Exception;

    .line 69
    if-eqz v0, :cond_2

    .line 70
    new-instance v0, Lhus;

    .line 4094
    iget-object v2, v4, Lbka;->b:Ljava/lang/Exception;

    .line 70
    const-string v3, ""

    invoke-direct {v0, v1, v2, v3}, Lhus;-><init>(ILjava/lang/Exception;Ljava/lang/String;)V

    .line 71
    const-string v2, "Babel_ConvCreator"

    const-string v3, "Exception returned by response to RTCS request to create a conversation"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v2, v3, v1}, Lezi;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 81
    :goto_1
    return-object v0

    :cond_1
    move v0, v1

    .line 2144
    goto :goto_0

    .line 5094
    :cond_2
    iget-object v0, v4, Lbka;->d:Ljava/lang/String;

    .line 73
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 74
    new-instance v0, Lhus;

    invoke-direct {v0, v1}, Lhus;-><init>(Z)V

    .line 75
    const-string v2, "Babel_ConvCreator"

    const-string v3, "No conversationId returned from RTCS request to create a conversation"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v2, v3, v1}, Lezi;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 78
    :cond_3
    new-instance v0, Lhus;

    invoke-direct {v0, v2}, Lhus;-><init>(Z)V

    .line 79
    invoke-virtual {v0}, Lhus;->d()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "conversation_id"

    .line 6094
    iget-object v3, v4, Lbka;->d:Ljava/lang/String;

    .line 79
    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    goto :goto_1
.end method

.method public b(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 86
    sget v0, Laal;->jm:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
