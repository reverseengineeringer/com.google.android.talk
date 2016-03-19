.class final Lery;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lerx;


# instance fields
.field final a:Landroid/content/Context;

.field b:Leru;

.field private final c:Landroid/telecom/TelecomManager;

.field private final d:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/telecom/TelecomManager;)V
    .locals 1

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Lerz;

    invoke-direct {v0, p0}, Lerz;-><init>(Lery;)V

    iput-object v0, p0, Lery;->d:Ljava/lang/Runnable;

    .line 56
    iput-object p1, p0, Lery;->a:Landroid/content/Context;

    .line 57
    iput-object p2, p0, Lery;->c:Landroid/telecom/TelecomManager;

    .line 58
    return-void
.end method

.method private a(I)Z
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lery;->b:Leru;

    invoke-virtual {v0}, Leru;->a()Lerg;

    move-result-object v0

    invoke-virtual {v0}, Lerg;->f()Lesw;

    move-result-object v0

    invoke-virtual {v0}, Lesw;->b()Lest;

    move-result-object v0

    invoke-virtual {v0}, Lest;->c()I

    move-result v0

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method a()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 65
    const-string v0, "Babel_telephony"

    const-string v1, "TeleHandoffWifiToCellular.startHandoff"

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lezi;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 66
    iget-object v0, p0, Lery;->b:Leru;

    invoke-virtual {v0}, Leru;->a()Lerg;

    move-result-object v1

    .line 68
    invoke-virtual {v1}, Lerg;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 69
    iget-object v0, p0, Lery;->c:Landroid/telecom/TelecomManager;

    const-string v2, "tel"

    invoke-virtual {v0, v2}, Landroid/telecom/TelecomManager;->getDefaultOutgoingPhoneAccount(Ljava/lang/String;)Landroid/telecom/PhoneAccountHandle;

    move-result-object v0

    .line 71
    :goto_0
    const-string v2, "Babel_telephony"

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x3b

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "TeleHandoffWifiToCellular.startHandoff, got phone account: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v6, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lezi;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 72
    if-nez v0, :cond_1

    .line 73
    const-string v0, "Babel_telephony"

    const-string v1, "TeleHandoffWifiToCellular.startHandoff, no phone account."

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lezi;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 74
    iget-object v0, p0, Lery;->b:Leru;

    const/16 v1, 0xe1

    invoke-virtual {v0, v6, v1}, Leru;->a(ZI)V

    .line 128
    :goto_1
    return-void

    .line 70
    :cond_0
    invoke-virtual {v1}, Lerg;->e()Landroid/telecom/ConnectionRequest;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telecom/ConnectionRequest;->getAccountHandle()Landroid/telecom/PhoneAccountHandle;

    move-result-object v0

    goto :goto_0

    .line 78
    :cond_1
    iget-object v2, p0, Lery;->b:Leru;

    invoke-virtual {v2}, Leru;->f()Z

    move-result v2

    if-nez v2, :cond_2

    .line 79
    const-string v0, "Babel_telephony"

    const-string v1, "TeleHandoffWifiToCellular.startHandoff, disallowed by config."

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lezi;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 80
    iget-object v0, p0, Lery;->b:Leru;

    const/16 v1, 0xe0

    invoke-virtual {v0, v6, v1}, Leru;->a(ZI)V

    goto :goto_1

    .line 84
    :cond_2
    invoke-virtual {v1}, Lerg;->m()Ljava/lang/String;

    move-result-object v2

    .line 85
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 86
    const-string v0, "Babel_telephony"

    const-string v1, "TeleHandoffWifiToCellular.startHandoff, no handoff number"

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lezi;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 87
    iget-object v0, p0, Lery;->b:Leru;

    const/16 v1, 0x140

    invoke-virtual {v0, v6, v1}, Leru;->a(ZI)V

    goto :goto_1

    .line 91
    :cond_3
    iget-object v2, p0, Lery;->b:Leru;

    invoke-virtual {v2}, Leru;->b()I

    move-result v2

    .line 92
    const/4 v3, 0x3

    if-eq v2, v3, :cond_5

    const/4 v3, 0x4

    if-eq v2, v3, :cond_5

    .line 95
    const-string v1, "Babel_telephony"

    const-string v3, "TeleHandoffWifiToCellular.startHandoff, not possible for call state: "

    .line 96
    invoke-static {v2}, Landroid/telecom/Connection;->stateToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_2
    new-array v2, v6, [Ljava/lang/Object;

    .line 95
    invoke-static {v1, v0, v2}, Lezi;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 97
    iget-object v0, p0, Lery;->b:Leru;

    const/16 v1, 0xe3

    invoke-virtual {v0, v6, v1}, Leru;->a(ZI)V

    goto :goto_1

    .line 96
    :cond_4
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_2

    .line 101
    :cond_5
    invoke-virtual {v1}, Lerg;->d()Lcom/google/android/apps/hangouts/telephony/TeleConnectionService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/apps/hangouts/telephony/TeleConnectionService;->getAllConnections()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v1

    .line 102
    const/4 v2, 0x1

    if-le v1, v2, :cond_6

    .line 105
    const-string v0, "Babel_telephony"

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x4d

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "TeleHandoffWifiToCellular.startHandoff, call count: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", fail handoff"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lezi;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 107
    iget-object v0, p0, Lery;->b:Leru;

    const/16 v1, 0xdd

    invoke-virtual {v0, v6, v1}, Leru;->a(ZI)V

    goto/16 :goto_1

    .line 111
    :cond_6
    iget-object v1, p0, Lery;->a:Landroid/content/Context;

    new-instance v2, Lesa;

    invoke-direct {v2, p0, v0}, Lesa;-><init>(Lery;Landroid/telecom/PhoneAccountHandle;)V

    invoke-static {v1, v2}, Lera;->a(Landroid/content/Context;Lerb;)V

    goto/16 :goto_1
.end method

.method a(Landroid/telecom/PhoneAccountHandle;)V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 166
    const-string v0, "Babel_telephony"

    const-string v1, "TeleHandoffWifiToCellular.callHandoffNumber"

    new-array v2, v7, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lezi;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 168
    iget-object v0, p0, Lery;->b:Leru;

    invoke-virtual {v0}, Leru;->a()Lerg;

    move-result-object v6

    .line 169
    new-instance v0, Landroid/telecom/ConnectionRequest;

    .line 171
    invoke-virtual {v6}, Lerg;->m()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Laal;->r(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    invoke-direct {v0, p1, v1, v2}, Landroid/telecom/ConnectionRequest;-><init>(Landroid/telecom/PhoneAccountHandle;Landroid/net/Uri;Landroid/os/Bundle;)V

    .line 174
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lery;->a(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 175
    iget-object v1, p0, Lery;->a:Landroid/content/Context;

    const-string v2, "babel_handoff_sprint_timeout_millis"

    const/16 v3, 0xfa0

    .line 176
    invoke-static {v1, v2, v3}, Laal;->a(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    .line 180
    invoke-static {}, Laal;->y()Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lery;->d:Ljava/lang/Runnable;

    int-to-long v4, v1

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 183
    :cond_0
    invoke-virtual {v6}, Lerg;->d()Lcom/google/android/apps/hangouts/telephony/TeleConnectionService;

    move-result-object v1

    .line 185
    invoke-static {v1}, Laal;->m(Landroid/content/Context;)Landroid/telecom/PhoneAccountHandle;

    move-result-object v2

    .line 184
    invoke-virtual {v1, v2, v0}, Lcom/google/android/apps/hangouts/telephony/TeleConnectionService;->createRemoteOutgoingConnection(Landroid/telecom/PhoneAccountHandle;Landroid/telecom/ConnectionRequest;)Landroid/telecom/RemoteConnection;

    move-result-object v2

    .line 186
    if-nez v2, :cond_1

    .line 187
    iget-object v0, p0, Lery;->b:Leru;

    const/16 v1, 0x141

    invoke-virtual {v0, v7, v1}, Leru;->a(ZI)V

    .line 203
    :goto_0
    return-void

    .line 189
    :cond_1
    const/4 v0, 0x0

    .line 190
    invoke-virtual {v6}, Lerg;->j()Leqs;

    move-result-object v1

    instance-of v1, v1, Leua;

    if-eqz v1, :cond_2

    .line 191
    invoke-virtual {v6}, Lerg;->j()Leqs;

    move-result-object v0

    check-cast v0, Leua;

    invoke-virtual {v0}, Leua;->p()Ljava/lang/String;

    move-result-object v0

    .line 196
    :cond_2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 197
    invoke-virtual {v6}, Lerg;->j()Leqs;

    move-result-object v0

    invoke-interface {v0}, Leqs;->e()Ljava/lang/String;

    move-result-object v3

    .line 199
    :goto_1
    iget-object v7, p0, Lery;->b:Leru;

    new-instance v0, Letc;

    iget-object v1, p0, Lery;->a:Landroid/content/Context;

    .line 200
    invoke-virtual {v6}, Lerg;->r()Ljava/lang/String;

    move-result-object v4

    .line 201
    invoke-virtual {v6}, Lerg;->i()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6}, Lerg;->g()Z

    move-result v6

    invoke-direct/range {v0 .. v6}, Letc;-><init>(Landroid/content/Context;Landroid/telecom/RemoteConnection;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 199
    invoke-virtual {v7, v0}, Leru;->a(Leqs;)V

    goto :goto_0

    :cond_3
    move-object v3, v0

    goto :goto_1
.end method

.method a(Leru;)V
    .locals 0

    .prologue
    .line 61
    iput-object p1, p0, Lery;->b:Leru;

    .line 62
    return-void
.end method

.method public b()V
    .locals 5

    .prologue
    const/4 v2, 0x6

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 132
    iget-object v0, p0, Lery;->b:Leru;

    invoke-virtual {v0}, Leru;->b()I

    move-result v0

    if-ne v0, v2, :cond_1

    .line 133
    iget-object v0, p0, Lery;->b:Leru;

    invoke-virtual {v0, v4, v3}, Leru;->a(ZI)V

    .line 147
    :cond_0
    :goto_0
    return-void

    .line 134
    :cond_1
    iget-object v0, p0, Lery;->b:Leru;

    invoke-virtual {v0}, Leru;->c()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    const/4 v0, 0x2

    .line 135
    invoke-direct {p0, v0}, Lery;->a(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 136
    const-string v0, "Babel_telephony"

    const-string v1, "TeleHandoffWifiToCellular.checkHandoffComplete, handoff is complete - carrier is T-Mobile and new call is active."

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lezi;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 138
    const/16 v0, 0xba5

    invoke-static {v0}, Laal;->c(I)V

    .line 139
    iget-object v0, p0, Lery;->b:Leru;

    invoke-virtual {v0, v4, v3}, Leru;->a(ZI)V

    goto :goto_0

    .line 140
    :cond_2
    iget-object v0, p0, Lery;->b:Leru;

    invoke-virtual {v0}, Leru;->c()I

    move-result v0

    if-ne v0, v2, :cond_3

    .line 141
    iget-object v0, p0, Lery;->b:Leru;

    invoke-virtual {v0, v3, v3}, Leru;->a(ZI)V

    goto :goto_0

    .line 142
    :cond_3
    iget-object v0, p0, Lery;->b:Leru;

    invoke-virtual {v0}, Leru;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 145
    iget-object v0, p0, Lery;->b:Leru;

    const/16 v1, 0x130

    invoke-virtual {v0, v3, v1}, Leru;->a(ZI)V

    goto :goto_0
.end method

.method public c()V
    .locals 2

    .prologue
    .line 207
    invoke-static {}, Laal;->y()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lery;->d:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 208
    return-void
.end method
