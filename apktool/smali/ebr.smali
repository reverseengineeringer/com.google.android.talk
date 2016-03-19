.class public final Lebr;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcwi;


# static fields
.field private static final a:Z


# instance fields
.field private final b:Lebt;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lezi;->l:Limx;

    const/4 v0, 0x0

    sput-boolean v0, Lebr;->a:Z

    return-void
.end method

.method public constructor <init>(Lebt;)V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lebr;->b:Lebt;

    .line 41
    return-void
.end method


# virtual methods
.method public E_()Z
    .locals 1

    .prologue
    .line 57
    const/4 v0, 0x0

    return v0
.end method

.method public F_()Z
    .locals 1

    .prologue
    .line 139
    const/4 v0, 0x0

    return v0
.end method

.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    const-string v0, "mms_recv_queue"

    return-object v0
.end method

.method public a(Landroid/content/Context;Lcwk;Lcwm;)V
    .locals 10

    .prologue
    const-wide/16 v8, 0x3e8

    .line 64
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 66
    :try_start_0
    iget-object v0, p0, Lebr;->b:Lebt;

    .line 67
    invoke-virtual {v0}, Lebt;->b()[B

    move-result-object v1

    iget-object v0, p0, Lebr;->b:Lebt;

    invoke-virtual {v0}, Lebt;->a()Ljava/lang/String;

    move-result-object v4

    .line 1375
    sget-boolean v0, Lenl;->a:Z

    if-eqz v0, :cond_0

    .line 1376
    const-string v0, "MmsTransaction.retrieveMessage: "

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {v0, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 1378
    :cond_0
    :goto_0
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1379
    new-instance v0, Ladb;

    const-string v1, "MmsTransactions: retrieve: empty URL"

    invoke-direct {v0, v1}, Ladb;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Lenk; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lend; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ladb; {:try_start_0 .. :try_end_0} :catch_2

    .line 85
    :catch_0
    move-exception v0

    .line 86
    const-string v1, "Babel_RetrieveMmsNetReq"

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x2f

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "RetrieveMmsRequest: failed to retrieve message "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lezi;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 87
    new-instance v1, Ldvn;

    const/16 v2, 0x76

    invoke-direct {v1, v2, v0}, Ldvn;-><init>(ILjava/lang/Exception;)V

    throw v1

    .line 1376
    :cond_1
    :try_start_1
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Lenk; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lend; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ladb; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_0

    .line 89
    :catch_1
    move-exception v0

    .line 90
    const-string v1, "Babel_RetrieveMmsNetReq"

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x2f

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "RetrieveMmsRequest: failed to retrieve message "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lezi;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 91
    new-instance v1, Ldvn;

    iget v2, v0, Lend;->a:I

    invoke-direct {v1, v2, v0}, Ldvn;-><init>(ILjava/lang/Exception;)V

    throw v1

    .line 1382
    :cond_2
    :try_start_2
    invoke-static {p1}, Lenn;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1384
    const-class v0, Lenb;

    invoke-static {p1, v0}, Lilh;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lenb;

    .line 1385
    invoke-virtual {v0, p1, v1, v4}, Lenb;->a(Landroid/content/Context;[BLjava/lang/String;)Ladw;

    move-result-object v0

    .line 72
    :goto_1
    invoke-static {p1, v0}, Lenn;->a(Landroid/content/Context;Ladw;)Landroid/net/Uri;

    move-result-object v0

    .line 73
    if-nez v0, :cond_4

    .line 75
    const-string v0, "Babel_RetrieveMmsNetReq"

    const-string v1, "RetrieveMmsRequest: failed to persist message into telephony"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lezi;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 76
    new-instance v0, Ldvn;

    const/16 v1, 0x86

    const-string v2, "Failed to persist retrieved mms message"

    invoke-direct {v0, v1, v2}, Ldvn;-><init>(ILjava/lang/String;)V

    throw v0
    :try_end_2
    .catch Lenk; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lend; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ladb; {:try_start_2 .. :try_end_2} :catch_2

    .line 92
    :catch_2
    move-exception v0

    .line 93
    const-string v1, "Babel_RetrieveMmsNetReq"

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x2f

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "RetrieveMmsRequest: failed to retrieve message "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lezi;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 94
    new-instance v1, Ldvn;

    const/16 v2, 0x89

    invoke-direct {v1, v2, v0}, Ldvn;-><init>(ILjava/lang/Exception;)V

    throw v1

    .line 1388
    :cond_3
    :try_start_3
    invoke-static {p1, v1, v4}, Lenl;->a(Landroid/content/Context;[BLjava/lang/String;)Ladw;

    move-result-object v0

    goto :goto_1

    .line 81
    :cond_4
    const/4 v1, 0x1

    .line 82
    invoke-static {v0}, Lenn;->c(Landroid/net/Uri;)J

    move-result-wide v4

    .line 81
    invoke-static {v1, v4, v5}, Leny;->a(IJ)V

    .line 83
    new-instance v1, Ldsh;

    iget-object v4, p0, Lebr;->b:Lebt;

    invoke-virtual {v4}, Lebt;->e()J

    move-result-wide v4

    iget-object v6, p0, Lebr;->b:Lebt;

    .line 84
    invoke-virtual {v6}, Lebt;->f()Z

    move-result v6

    invoke-direct {v1, v0, v4, v5, v6}, Ldsh;-><init>(Landroid/net/Uri;JZ)V
    :try_end_3
    .catch Lenk; {:try_start_3 .. :try_end_3} :catch_0
    .catch Lend; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ladb; {:try_start_3 .. :try_end_3} :catch_2

    .line 98
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 99
    mul-long/2addr v2, v8

    invoke-virtual {v1, v2, v3}, Ldsh;->a(J)V

    .line 100
    mul-long v2, v4, v8

    invoke-virtual {v1, v2, v3}, Ldsh;->b(J)V

    .line 101
    iget-object v0, p0, Lebr;->b:Lebt;

    invoke-virtual {v1, v0}, Ldsh;->a(Leff;)V

    .line 102
    iget v0, p2, Lcwk;->c:I

    invoke-static {v0, v1}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->a(ILdqf;)V

    .line 103
    return-void
.end method

.method public a(Lcwi;)Z
    .locals 1

    .prologue
    .line 154
    const/4 v0, 0x0

    return v0
.end method

.method public a(Lcwk;Ldvn;)Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 164
    invoke-virtual {p2}, Ldvn;->c()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 189
    :pswitch_0
    const-string v1, "Babel_RetrieveMmsNetReq"

    invoke-virtual {p2}, Ldvn;->c()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v4, 0x31

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Default no retry on BabelClientError: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lezi;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 190
    :goto_0
    :pswitch_1
    return v0

    .line 166
    :pswitch_2
    const/4 v0, 0x1

    goto :goto_0

    .line 164
    nop

    :pswitch_data_0
    .packed-switch 0x6a
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public a(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 149
    const/4 v0, 0x0

    return v0
.end method

.method public b()J
    .locals 4

    .prologue
    .line 1036
    sget-object v0, Laal;->oJ:Landroid/content/Context;

    .line 50
    const-class v1, Lbdp;

    invoke-static {v0, v1}, Lilh;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbdp;

    .line 51
    const-string v1, "babel_pending_message_failure_duration"

    const-wide/32 v2, 0x124f80

    invoke-interface {v0, v1, v2, v3}, Lbdp;->a(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public b(ILdvn;)V
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 107
    invoke-static {p1}, Ldvd;->e(I)Lbfd;

    move-result-object v1

    .line 108
    if-nez v1, :cond_1

    .line 109
    const-string v0, "Babel_RetrieveMmsNetReq"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lezi;->a(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 110
    const-string v0, "Babel_RetrieveMmsNetReq"

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x39

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Skipping request failure for invalid account: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lezi;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 135
    :cond_0
    :goto_0
    return-void

    .line 115
    :cond_1
    invoke-static {}, Ldvd;->l()Lbfd;

    move-result-object v2

    .line 116
    if-nez v2, :cond_2

    .line 117
    const-string v0, "Babel_RetrieveMmsNetReq"

    const-string v1, "Skipping request failure for null MMS account"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lezi;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 124
    :cond_2
    invoke-virtual {v2}, Lbfd;->g()I

    move-result v0

    iget-object v3, p0, Lebr;->b:Lebt;

    .line 125
    invoke-virtual {v3}, Lebt;->e()J

    move-result-wide v4

    iget-object v3, p0, Lebr;->b:Lebt;

    invoke-virtual {v3}, Lebt;->f()Z

    move-result v3

    invoke-virtual {p2}, Ldvn;->c()I

    move-result v6

    .line 124
    invoke-static {v0, v4, v5, v3, v6}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->a(IJZI)V

    .line 126
    if-eqz p2, :cond_3

    invoke-virtual {p2}, Ldvn;->c()I

    move-result v0

    if-eqz v0, :cond_3

    .line 2036
    sget-object v0, Laal;->oJ:Landroid/content/Context;

    .line 127
    const-class v3, Lhba;

    invoke-static {v0, v3}, Lilh;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhba;

    .line 128
    invoke-virtual {v2}, Lbfd;->g()I

    move-result v2

    invoke-interface {v0, v2}, Lhba;->a(I)Lhaw;

    move-result-object v0

    const/16 v2, 0x5f4

    .line 129
    invoke-interface {v0, v2}, Lhaw;->a(I)Lhax;

    move-result-object v0

    .line 130
    invoke-virtual {p2}, Ldvn;->c()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Lhax;->a(Ljava/lang/Integer;)Lhax;

    move-result-object v0

    iget-object v2, p0, Lebr;->b:Lebt;

    .line 131
    invoke-virtual {v2}, Lebt;->e()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lhax;->a(Ljava/lang/String;)Lhax;

    move-result-object v0

    .line 132
    invoke-interface {v0}, Lhax;->d()V

    .line 134
    :cond_3
    iget-object v0, p0, Lebr;->b:Lebt;

    invoke-static {v1, v0, p2}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->a(Lbfd;Leff;Ldvn;)V

    goto :goto_0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 144
    const/4 v0, 0x0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 159
    const-string v1, "RetrieveMmsNetworkRequest "

    iget-object v0, p0, Lebr;->b:Lebt;

    invoke-virtual {v0}, Lebt;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method
