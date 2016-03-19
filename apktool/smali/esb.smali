.class public final Lesb;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lerl;

.field private final c:Lerg;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/apps/hangouts/telephony/TeleConnectionService;Landroid/telecom/ConnectionRequest;Lerl;)V
    .locals 3

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lesb;->a:Landroid/content/Context;

    .line 35
    iput-object p4, p0, Lesb;->b:Lerl;

    .line 37
    new-instance v0, Lesw;

    new-instance v1, Lest;

    .line 41
    invoke-static {p2}, Letj;->a(Landroid/content/Context;)I

    move-result v2

    invoke-direct {v1, p2, v2}, Lest;-><init>(Landroid/content/Context;I)V

    const/4 v2, 0x1

    invoke-direct {v0, p2, p3, v1, v2}, Lesw;-><init>(Lcom/google/android/apps/hangouts/telephony/TeleConnectionService;Landroid/telecom/ConnectionRequest;Lest;Z)V

    .line 43
    new-instance v1, Lerg;

    invoke-direct {v1, v0}, Lerg;-><init>(Lesw;)V

    iput-object v1, p0, Lesb;->c:Lerg;

    .line 44
    iget-object v0, p0, Lesb;->c:Lerg;

    invoke-virtual {v0}, Lerg;->b()V

    .line 45
    return-void
.end method

.method private b()Z
    .locals 10

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 80
    const-string v0, "Babel_telephony"

    const-string v3, "TeleIncomingCellCallRequest.hasOnGoingCallFromSameNumber"

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v0, v3, v4}, Lezi;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 82
    iget-object v0, p0, Lesb;->c:Lerg;

    invoke-virtual {v0}, Lerg;->d()Lcom/google/android/apps/hangouts/telephony/TeleConnectionService;

    move-result-object v0

    .line 83
    invoke-virtual {v0}, Lcom/google/android/apps/hangouts/telephony/TeleConnectionService;->getAllConnections()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/Connection;

    .line 84
    instance-of v3, v0, Lerg;

    if-nez v3, :cond_1

    .line 85
    const-string v0, "Babel_telephony"

    const-string v3, "TeleIncomingCellCallRequest.hasOnGoingCallFromSameNumber, not TeleConnection"

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v0, v3, v4}, Lezi;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 90
    :cond_1
    check-cast v0, Lerg;

    .line 92
    invoke-virtual {v0}, Lerg;->y()J

    move-result-wide v4

    iget-object v3, p0, Lesb;->a:Landroid/content/Context;

    .line 93
    invoke-static {v3}, Lerl;->a(Landroid/content/Context;)J

    move-result-wide v8

    cmp-long v3, v4, v8

    if-gtz v3, :cond_0

    iget-object v3, p0, Lesb;->c:Lerg;

    .line 95
    invoke-virtual {v3}, Lerg;->e()Landroid/telecom/ConnectionRequest;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telecom/ConnectionRequest;->getAddress()Landroid/net/Uri;

    move-result-object v3

    .line 96
    invoke-virtual {v0}, Lerg;->e()Landroid/telecom/ConnectionRequest;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telecom/ConnectionRequest;->getAddress()Landroid/net/Uri;

    move-result-object v7

    .line 2227
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    move-object v5, v0

    :goto_1
    if-eqz v3, :cond_3

    .line 2228
    invoke-virtual {v3}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v0

    move-object v4, v0

    :goto_2
    if-eqz v7, :cond_4

    .line 2229
    invoke-virtual {v7}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    move-object v3, v0

    :goto_3
    if-eqz v7, :cond_5

    .line 2230
    invoke-virtual {v7}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v0

    .line 2227
    :goto_4
    invoke-static {v5, v4, v3, v0}, Lerl;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 94
    if-eqz v0, :cond_0

    .line 97
    const-string v0, "Babel_telephony"

    const-string v1, "TeleIncomingCellCallRequest.hasOnGoingCallFromSameNumber, duplicate call"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lezi;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 98
    const/4 v0, 0x1

    .line 102
    :goto_5
    return v0

    :cond_2
    move-object v5, v1

    .line 2227
    goto :goto_1

    :cond_3
    move-object v4, v1

    .line 2228
    goto :goto_2

    :cond_4
    move-object v3, v1

    .line 2229
    goto :goto_3

    :cond_5
    move-object v0, v1

    .line 2230
    goto :goto_4

    :cond_6
    move v0, v2

    .line 102
    goto :goto_5
.end method

.method private c()V
    .locals 4

    .prologue
    .line 139
    iget-object v0, p0, Lesb;->c:Lerg;

    invoke-virtual {v0}, Lerg;->d()Lcom/google/android/apps/hangouts/telephony/TeleConnectionService;

    move-result-object v0

    .line 141
    invoke-static {v0}, Laal;->m(Landroid/content/Context;)Landroid/telecom/PhoneAccountHandle;

    move-result-object v1

    iget-object v2, p0, Lesb;->c:Lerg;

    invoke-virtual {v2}, Lerg;->e()Landroid/telecom/ConnectionRequest;

    move-result-object v2

    .line 140
    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/hangouts/telephony/TeleConnectionService;->createRemoteIncomingConnection(Landroid/telecom/PhoneAccountHandle;Landroid/telecom/ConnectionRequest;)Landroid/telecom/RemoteConnection;

    move-result-object v0

    .line 142
    if-eqz v0, :cond_0

    .line 143
    const-string v1, "Babel_telephony"

    const-string v2, "TeleIncomingCellCallRequest.rejectCanceledCellularCall, rejecting call"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lezi;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 144
    invoke-virtual {v0}, Landroid/telecom/RemoteConnection;->reject()V

    .line 146
    :cond_0
    return-void
.end method


# virtual methods
.method public a()Lerg;
    .locals 12

    .prologue
    const/4 v11, 0x4

    const/4 v10, 0x2

    const/4 v3, 0x0

    const/4 v6, 0x1

    const/4 v1, 0x0

    .line 49
    const-string v0, "Babel_telephony"

    const-string v2, "TeleIncomingCellCallRequest.startRequest"

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v4}, Lezi;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 50
    const/16 v7, 0x922

    .line 52
    iget-object v0, p0, Lesb;->b:Lerl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lesb;->b:Lerl;

    iget-object v2, p0, Lesb;->c:Lerg;

    .line 53
    invoke-virtual {v2}, Lerg;->e()Landroid/telecom/ConnectionRequest;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lerl;->a(Landroid/telecom/ConnectionRequest;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 54
    const-string v0, "Babel_telephony"

    const-string v2, "TeleIncomingCellCallRequest.startRequest, call is duplicate"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v1}, Lezi;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 55
    invoke-direct {p0}, Lesb;->c()V

    .line 56
    iget-object v0, p0, Lesb;->c:Lerg;

    new-instance v1, Landroid/telecom/DisconnectCause;

    invoke-direct {v1, v11, v3}, Landroid/telecom/DisconnectCause;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Lerg;->setDisconnected(Landroid/telecom/DisconnectCause;)V

    .line 57
    const/16 v0, 0x98e

    .line 72
    :goto_0
    iget-object v1, p0, Lesb;->a:Landroid/content/Context;

    invoke-static {v1}, Leut;->a(Landroid/content/Context;)Leut;

    move-result-object v1

    invoke-virtual {v1}, Leut;->b()I

    move-result v1

    .line 73
    iget-object v2, p0, Lesb;->a:Landroid/content/Context;

    iget-object v3, p0, Lesb;->c:Lerg;

    .line 74
    invoke-virtual {v3}, Lerg;->f()Lesw;

    move-result-object v3

    invoke-virtual {v3}, Lesw;->c()Ljava/lang/String;

    move-result-object v3

    .line 73
    invoke-static {v2, v1, v3, v0}, Laal;->a(Landroid/content/Context;ILjava/lang/String;I)V

    .line 76
    iget-object v0, p0, Lesb;->c:Lerg;

    return-object v0

    .line 58
    :cond_0
    invoke-direct {p0}, Lesb;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 59
    const-string v0, "Babel_telephony"

    const-string v2, "TeleIncomingCellCallRequest.startRequest, ongoing call from the same number"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v1}, Lezi;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 60
    invoke-direct {p0}, Lesb;->c()V

    .line 61
    iget-object v0, p0, Lesb;->c:Lerg;

    new-instance v1, Landroid/telecom/DisconnectCause;

    invoke-direct {v1, v11, v3}, Landroid/telecom/DisconnectCause;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Lerg;->setDisconnected(Landroid/telecom/DisconnectCause;)V

    .line 62
    const/16 v0, 0x98e

    goto :goto_0

    .line 1160
    :cond_1
    iget-object v0, p0, Lesb;->a:Landroid/content/Context;

    const-string v2, "babel_spam_caller_id"

    const-string v4, "+14082560700"

    invoke-static {v0, v2, v4}, Laal;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1162
    iget-object v2, p0, Lesb;->c:Lerg;

    invoke-virtual {v2}, Lerg;->f()Lesw;

    move-result-object v2

    invoke-virtual {v2}, Lesw;->d()Ljava/lang/String;

    move-result-object v2

    .line 1164
    iget-object v4, p0, Lesb;->c:Lerg;

    invoke-virtual {v4}, Lerg;->h()Lest;

    move-result-object v4

    iget-object v5, p0, Lesb;->a:Landroid/content/Context;

    invoke-virtual {v4, v5}, Lest;->a(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1165
    invoke-static {v2, v0}, Laal;->c(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 1166
    const-string v4, "Babel_telephony"

    const-string v5, "TeleIncomingCellCallRequest.blockSpamCallsToDarkNumber, not blocking. Incoming caller ID: %s, didn\'t exactly match blocked caller ID: %s"

    new-array v8, v10, [Ljava/lang/Object;

    .line 1168
    invoke-static {v2}, Laal;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v8, v1

    aput-object v0, v8, v6

    .line 1166
    invoke-static {v5, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v4, v0, v2}, Lezi;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v1

    .line 63
    :goto_1
    if-eqz v0, :cond_7

    .line 64
    const-string v0, "Babel_telephony"

    const-string v2, "TeleIncomingCellCallRequest.startRequest, call is spam to dark number"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v1}, Lezi;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 65
    invoke-direct {p0}, Lesb;->c()V

    .line 66
    iget-object v0, p0, Lesb;->c:Lerg;

    new-instance v1, Landroid/telecom/DisconnectCause;

    invoke-direct {v1, v11, v3}, Landroid/telecom/DisconnectCause;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Lerg;->setDisconnected(Landroid/telecom/DisconnectCause;)V

    move v0, v7

    goto/16 :goto_0

    .line 1172
    :cond_2
    invoke-static {v2, v0}, Laal;->d(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 1173
    const-string v4, "Babel_telephony"

    const-string v5, "TeleIncomingCellCallRequest.blockSpamCallsToDarkNumber, not blocking. Incoming caller ID: %s, didn\'t fuzzy match blocked caller ID: %s"

    new-array v8, v10, [Ljava/lang/Object;

    .line 1175
    invoke-static {v2}, Laal;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v8, v1

    aput-object v0, v8, v6

    .line 1173
    invoke-static {v5, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v4, v0, v2}, Lezi;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v1

    .line 1176
    goto :goto_1

    .line 1207
    :cond_3
    iget-object v0, p0, Lesb;->a:Landroid/content/Context;

    .line 1208
    invoke-static {v0}, Leut;->a(Landroid/content/Context;)Leut;

    move-result-object v0

    invoke-virtual {v0}, Leut;->g()J

    move-result-wide v4

    .line 1210
    const-wide/16 v8, 0x0

    cmp-long v0, v4, v8

    if-lez v0, :cond_4

    .line 1211
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long v4, v8, v4

    sget-object v0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v8, 0x1

    .line 1212
    invoke-virtual {v0, v8, v9}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v8

    div-long/2addr v4, v8

    long-to-int v0, v4

    .line 1181
    :goto_2
    const/4 v2, -0x1

    if-ne v0, v2, :cond_5

    .line 1182
    const-string v0, "Babel_telephony"

    const-string v2, "TeleIncomingCellCallRequest.blockSpamCallsToDarkNumber, blocking. Caller ID matches and user never made an emergency call"

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v4}, Lezi;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v6

    .line 1184
    goto :goto_1

    .line 1214
    :cond_4
    const/4 v0, -0x1

    goto :goto_2

    .line 1187
    :cond_5
    iget-object v2, p0, Lesb;->a:Landroid/content/Context;

    const-string v4, "babel_days_to_unblock_spam"

    const/16 v5, 0x1e

    invoke-static {v2, v4, v5}, Laal;->a(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    .line 1189
    if-le v0, v2, :cond_6

    .line 1190
    const-string v4, "Babel_telephony"

    const-string v5, "TeleIncomingCellCallRequest.blockSpamCallsToDarkNumber, blocking. Caller ID matches and user made an emergency call %d days ago which is greater than the threshold: %d"

    new-array v8, v10, [Ljava/lang/Object;

    .line 1192
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v8, v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v8, v6

    .line 1190
    invoke-static {v5, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v4, v0, v2}, Lezi;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v6

    .line 1193
    goto/16 :goto_1

    .line 1196
    :cond_6
    const-string v4, "Babel_telephony"

    const-string v5, "TeleIncomingCellCallRequest.blockSpamCallsToDarkNumber, not blocking even though caller ID matches. Use made an emergency call %d days ago which is less than the threshold: %d"

    new-array v8, v10, [Ljava/lang/Object;

    .line 1198
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v8, v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v8, v6

    .line 1196
    invoke-static {v5, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v4, v0, v2}, Lezi;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v1

    .line 1199
    goto/16 :goto_1

    .line 2106
    :cond_7
    iget-object v0, p0, Lesb;->a:Landroid/content/Context;

    const-string v2, "babel_remote_connection_allowed"

    invoke-static {v0, v2, v6}, Laal;->a(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    .line 2109
    if-nez v0, :cond_8

    .line 2110
    const-string v0, "Babel_telephony"

    const-string v2, "TeleIncomingCellCallRequest.createRemoteConnection, remote connection disallowed by gservices"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v1}, Lezi;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2112
    iget-object v0, p0, Lesb;->c:Lerg;

    new-instance v1, Landroid/telecom/DisconnectCause;

    const/16 v2, 0xa

    invoke-direct {v1, v2}, Landroid/telecom/DisconnectCause;-><init>(I)V

    invoke-virtual {v0, v1}, Lerg;->setDisconnected(Landroid/telecom/DisconnectCause;)V

    .line 69
    :goto_3
    iget-object v0, p0, Lesb;->a:Landroid/content/Context;

    iget-object v1, p0, Lesb;->c:Lerg;

    invoke-static {v0, v1}, Laal;->a(Landroid/content/Context;Lerg;)V

    move v0, v7

    goto/16 :goto_0

    .line 2115
    :cond_8
    iget-object v0, p0, Lesb;->c:Lerg;

    invoke-virtual {v0}, Lerg;->d()Lcom/google/android/apps/hangouts/telephony/TeleConnectionService;

    move-result-object v0

    .line 2117
    invoke-static {v0}, Laal;->m(Landroid/content/Context;)Landroid/telecom/PhoneAccountHandle;

    move-result-object v2

    iget-object v4, p0, Lesb;->c:Lerg;

    .line 2118
    invoke-virtual {v4}, Lerg;->e()Landroid/telecom/ConnectionRequest;

    move-result-object v4

    .line 2116
    invoke-virtual {v0, v2, v4}, Lcom/google/android/apps/hangouts/telephony/TeleConnectionService;->createRemoteIncomingConnection(Landroid/telecom/PhoneAccountHandle;Landroid/telecom/ConnectionRequest;)Landroid/telecom/RemoteConnection;

    move-result-object v2

    .line 2119
    if-nez v2, :cond_9

    .line 2120
    const-string v0, "Babel_telephony"

    const-string v2, "TeleIncomingCellCallRequest.createRemoteConnection, remoteConnection is null"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v1}, Lezi;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2122
    iget-object v0, p0, Lesb;->c:Lerg;

    new-instance v1, Landroid/telecom/DisconnectCause;

    const/16 v2, 0xa

    invoke-direct {v1, v2}, Landroid/telecom/DisconnectCause;-><init>(I)V

    invoke-virtual {v0, v1}, Lerg;->setDisconnected(Landroid/telecom/DisconnectCause;)V

    goto :goto_3

    .line 2125
    :cond_9
    const-string v0, "Babel_telephony"

    const-string v4, "TeleIncomingCellCallRequest.createRemoteConnection"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v4, v1}, Lezi;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2126
    new-instance v0, Letc;

    iget-object v1, p0, Lesb;->a:Landroid/content/Context;

    iget-object v4, p0, Lesb;->c:Lerg;

    .line 2127
    invoke-virtual {v4}, Lerg;->i()Ljava/lang/String;

    move-result-object v5

    move-object v4, v3

    invoke-direct/range {v0 .. v6}, Letc;-><init>(Landroid/content/Context;Landroid/telecom/RemoteConnection;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2128
    iget-object v1, p0, Lesb;->c:Lerg;

    invoke-virtual {v1, v0}, Lerg;->a(Leqs;)V

    goto :goto_3
.end method
