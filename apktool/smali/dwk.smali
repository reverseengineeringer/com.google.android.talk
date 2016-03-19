.class public final Ldwk;
.super Ldyx;
.source "SourceFile"


# instance fields
.field private final a:Ljava/lang/String;

.field private final e:J

.field private f:I


# direct methods
.method public constructor <init>(Lbfd;Ljava/lang/String;J)V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0, p1}, Ldyx;-><init>(Lbfd;)V

    .line 27
    const/4 v0, 0x0

    iput v0, p0, Ldwk;->f:I

    .line 32
    iput-object p2, p0, Ldwk;->a:Ljava/lang/String;

    .line 33
    iput-wide p3, p0, Ldwk;->e:J

    .line 34
    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 0

    .prologue
    .line 37
    iput p1, p0, Ldwk;->f:I

    .line 38
    return-void
.end method

.method public p_()V
    .locals 12

    .prologue
    const-wide/16 v2, -0x1

    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 42
    new-instance v4, Lbfz;

    .line 1036
    sget-object v0, Laal;->oJ:Landroid/content/Context;

    .line 1123
    iget-object v1, p0, Ldyx;->b:Ldvb;

    iget v1, v1, Ldvb;->a:I

    .line 42
    invoke-direct {v4, v0, v1}, Lbfz;-><init>(Landroid/content/Context;I)V

    .line 43
    iget-object v0, p0, Ldwk;->a:Ljava/lang/String;

    invoke-static {v0}, Lbfz;->b(Ljava/lang/String;)Z

    move-result v5

    .line 44
    if-nez v5, :cond_0

    iget-object v0, p0, Ldwk;->a:Ljava/lang/String;

    .line 45
    invoke-virtual {v4, v0}, Lbfz;->g(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Ldwk;->a:Ljava/lang/String;

    .line 47
    invoke-virtual {v4, v0}, Lbfz;->p(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v10, :cond_0

    .line 49
    const-string v0, "Babel"

    const-string v1, "Tried to delete a Hangouts group conversation, but they are not deletable.\n\tAccountIndex: "

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 2123
    iget-object v2, p0, Ldyx;->b:Ldvb;

    iget v2, v2, Ldvb;->a:I

    .line 52
    iget-object v3, p0, Ldwk;->a:Ljava/lang/String;

    .line 53
    invoke-static {v3}, Lezi;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iget-object v5, p0, Ldwk;->a:Ljava/lang/String;

    .line 56
    invoke-virtual {v4, v5}, Lbfz;->g(Ljava/lang/String;)I

    move-result v5

    iget-object v6, p0, Ldwk;->a:Ljava/lang/String;

    .line 57
    invoke-virtual {v4, v6}, Lbfz;->p(Ljava/lang/String;)I

    move-result v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, 0x76

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    add-int/2addr v7, v8

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n\tConversationId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n\tisSmsConv: false\n\tConversationTransportType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n\tConversationType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    .line 49
    invoke-static {v0, v1, v2}, Lezi;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 58
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Hangouts group conversations are not deletable"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 61
    :cond_0
    if-eqz v5, :cond_7

    .line 62
    iget-object v0, p0, Ldwk;->a:Ljava/lang/String;

    invoke-virtual {v4, v0}, Lbfz;->W(Ljava/lang/String;)J

    move-result-wide v0

    .line 64
    :goto_0
    invoke-virtual {v4}, Lbfz;->a()V

    .line 66
    :try_start_0
    iget-object v6, p0, Ldwk;->a:Ljava/lang/String;

    invoke-static {v6}, Lbfz;->a(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 70
    if-nez v5, :cond_1

    iget-wide v6, p0, Ldwk;->e:J

    const-wide/16 v8, 0x0

    cmp-long v5, v6, v8

    if-gez v5, :cond_4

    .line 74
    :cond_1
    iget-object v5, p0, Ldwk;->a:Ljava/lang/String;

    const-wide v6, 0x7fffffffffffffffL

    invoke-virtual {v4, v5, v6, v7}, Lbfz;->d(Ljava/lang/String;J)Z

    .line 95
    :goto_1
    invoke-static {v4}, Lbft;->d(Lbfz;)V

    .line 97
    invoke-virtual {v4}, Lbfz;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 99
    invoke-virtual {v4}, Lbfz;->c()V

    .line 101
    cmp-long v2, v0, v2

    if-eqz v2, :cond_2

    .line 103
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x13

    if-lt v2, v3, :cond_6

    .line 3116
    sget-object v2, Landroid/provider/Telephony$Threads;->CONTENT_URI:Landroid/net/Uri;

    .line 105
    :goto_2
    invoke-static {v2, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 4036
    sget-object v1, Laal;->oJ:Landroid/content/Context;

    .line 106
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, v0, v11, v11}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 108
    :cond_2
    iget-object v0, p0, Ldwk;->a:Ljava/lang/String;

    invoke-static {v0}, Lbfz;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 4124
    new-instance v0, Ljyo;

    invoke-direct {v0}, Ljyo;-><init>()V

    .line 4125
    new-instance v1, Lkdp;

    invoke-direct {v1}, Lkdp;-><init>()V

    iput-object v1, v0, Ljyo;->responseHeader:Lkdp;

    .line 4126
    iget-object v1, v0, Ljyo;->responseHeader:Lkdp;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v1, Lkdp;->a:Ljava/lang/Integer;

    .line 4127
    new-instance v1, Ldqn;

    invoke-direct {v1, v0}, Ldqn;-><init>(Ljyo;)V

    .line 4128
    new-instance v0, Leau;

    iget v2, p0, Ldwk;->f:I

    invoke-direct {v0, v2, v10, v1}, Leau;-><init>(IILdqf;)V

    .line 4130
    iget v1, p0, Ldwk;->f:I

    .line 5127
    iget-object v2, p0, Ldyx;->b:Ldvb;

    iget-object v2, v2, Ldvb;->b:Lbfd;

    .line 4130
    invoke-static {v1, v2, v0}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->a(ILbfd;Leau;)V

    .line 112
    :cond_3
    return-void

    .line 82
    :cond_4
    :try_start_1
    iget-object v5, p0, Ldwk;->a:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lbfz;->q(Ljava/lang/String;)V

    .line 83
    iget-object v5, p0, Ldwk;->a:Ljava/lang/String;

    const-wide/16 v6, 0x2

    invoke-virtual {v4, v5, v6, v7}, Lbfz;->m(Ljava/lang/String;J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 99
    :catchall_0
    move-exception v0

    invoke-virtual {v4}, Lbfz;->c()V

    throw v0

    .line 88
    :cond_5
    :try_start_2
    new-instance v5, Ldwl;

    iget-object v6, p0, Ldwk;->a:Ljava/lang/String;

    iget-wide v8, p0, Ldwk;->e:J

    const/4 v7, 0x0

    invoke-direct {v5, v6, v8, v9, v7}, Ldwl;-><init>(Ljava/lang/String;J[Ljava/lang/String;)V

    .line 91
    invoke-virtual {v5, p0}, Ldwl;->a(Ldyx;)V

    .line 93
    iget-object v5, p0, Ldwk;->a:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lbfz;->q(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 3120
    :cond_6
    const-string v2, "content://mms-sms/"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const-string v3, "conversations"

    invoke-static {v2, v3}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    goto :goto_2

    :cond_7
    move-wide v0, v2

    goto/16 :goto_0
.end method
