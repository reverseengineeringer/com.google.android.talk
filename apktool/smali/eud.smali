.class final Leud;
.super Lhku;
.source "SourceFile"


# instance fields
.field final synthetic a:Leua;


# direct methods
.method constructor <init>(Leua;)V
    .locals 1

    .prologue
    .line 983
    iput-object p1, p0, Leud;->a:Leua;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lhku;-><init>(B)V

    return-void
.end method


# virtual methods
.method public a(Lcgw;)V
    .locals 11

    .prologue
    const/16 v10, 0x8

    const/4 v3, 0x0

    const/4 v8, 0x1

    const/4 v1, 0x0

    .line 1035
    if-eqz p1, :cond_e

    .line 1036
    invoke-virtual {p1}, Lcgw;->O()I

    move-result v0

    move v7, v0

    .line 1038
    :goto_0
    const-string v0, "Babel_telephony"

    .line 1039
    invoke-static {v7}, Laal;->i(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Leud;->a:Leua;

    .line 21070
    iget-object v4, v4, Leua;->c:Lerg;

    .line 1039
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, 0x29

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    add-int/2addr v6, v9

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v6, "TeleWifiCall.onHangoutEnded, endCause: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, ", "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v4, v1, [Ljava/lang/Object;

    .line 1038
    invoke-static {v0, v2, v4}, Lezi;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1041
    iget-object v0, p0, Leud;->a:Leua;

    .line 22874
    iget-object v2, v0, Leua;->a:Landroid/content/Context;

    const-string v4, "babel_wifi_call_fallback_to_cellular_allowed"

    invoke-static {v2, v4, v8}, Laal;->a(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_0

    .line 22876
    const-string v2, "Babel_telephony"

    iget-object v0, v0, Leua;->c:Lerg;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x49

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "TeleWifiCall.shouldFallbackToCellular, fallback to cellular not allowed, "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {v2, v0, v4}, Lezi;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v1

    .line 1041
    :goto_1
    if-eqz v0, :cond_a

    iget-object v4, p0, Leud;->a:Leua;

    .line 23938
    const-string v0, "Babel_telephony"

    iget-object v2, v4, Leua;->c:Lerg;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, 0x28

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v6, "TeleWifiCall.attemptFallbackToCellular, "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v5, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v5}, Lezi;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 23941
    iget-object v9, v4, Leua;->c:Lerg;

    .line 23943
    invoke-virtual {v9}, Lerg;->d()Lcom/google/android/apps/hangouts/telephony/TeleConnectionService;

    move-result-object v0

    .line 23944
    invoke-virtual {v9}, Lerg;->f()Lesw;

    move-result-object v2

    invoke-virtual {v2, v8}, Lesw;->a(I)V

    .line 23946
    invoke-static {v0}, Laal;->m(Landroid/content/Context;)Landroid/telecom/PhoneAccountHandle;

    move-result-object v2

    invoke-virtual {v9}, Lerg;->e()Landroid/telecom/ConnectionRequest;

    move-result-object v5

    .line 23945
    invoke-virtual {v0, v2, v5}, Lcom/google/android/apps/hangouts/telephony/TeleConnectionService;->createRemoteOutgoingConnection(Landroid/telecom/PhoneAccountHandle;Landroid/telecom/ConnectionRequest;)Landroid/telecom/RemoteConnection;

    move-result-object v2

    .line 23947
    if-nez v2, :cond_9

    .line 23948
    const-string v0, "Babel_telephony"

    iget-object v2, v4, Leua;->c:Lerg;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x4c

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "TeleWifiCall.attemptFallbackToCellular, unable to create remote connection, "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v4}, Lezi;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 23950
    invoke-virtual {v9}, Lerg;->f()Lesw;

    move-result-object v0

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lesw;->a(I)V

    move v0, v1

    .line 1041
    :goto_2
    if-eqz v0, :cond_a

    .line 1042
    iget-object v0, p0, Leud;->a:Leua;

    .line 24070
    invoke-virtual {v0, v3}, Leua;->a(Landroid/telecom/DisconnectCause;)V

    .line 1049
    :goto_3
    return-void

    .line 22881
    :cond_0
    iget-object v2, v0, Leua;->a:Landroid/content/Context;

    const-string v4, "babel_remote_connection_allowed"

    invoke-static {v2, v4, v8}, Laal;->a(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_1

    .line 22883
    const-string v2, "Babel_telephony"

    iget-object v0, v0, Leua;->c:Lerg;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x46

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "TeleWifiCall.shouldFallbackToCellular, remote connection not allowed, "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {v2, v0, v4}, Lezi;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v1

    .line 22885
    goto/16 :goto_1

    .line 22888
    :cond_1
    iget-object v2, v0, Leua;->c:Lerg;

    if-nez v2, :cond_2

    .line 22889
    const-string v0, "Babel_telephony"

    const-string v2, "TeleWifiCall.shouldFallbackToCellular, connection is null"

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v4}, Lezi;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v1

    .line 22890
    goto/16 :goto_1

    .line 22894
    :cond_2
    iget-object v2, v0, Leua;->c:Lerg;

    invoke-virtual {v2}, Lerg;->getState()I

    move-result v2

    const/4 v4, 0x3

    if-eq v2, v4, :cond_3

    .line 22895
    const-string v2, "Babel_telephony"

    iget-object v4, v0, Leua;->c:Lerg;

    invoke-virtual {v4}, Lerg;->getState()I

    move-result v4

    iget-object v0, v0, Leua;->c:Lerg;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, 0x3e

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v6, "TeleWifiCall.shouldFallbackToCellular, state is: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {v2, v0, v4}, Lezi;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v1

    .line 22897
    goto/16 :goto_1

    .line 22902
    :cond_3
    iget-object v2, v0, Leua;->c:Lerg;

    invoke-virtual {v2}, Lerg;->p()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 22903
    const-string v2, "Babel_telephony"

    iget-object v0, v0, Leua;->c:Lerg;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x43

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "TeleWifiCall.shouldFallbackToCellular, already has a hangout room, "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {v2, v0, v4}, Lezi;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v1

    .line 22905
    goto/16 :goto_1

    .line 22908
    :cond_4
    iget-object v2, v0, Leua;->d:Lcgw;

    if-nez v2, :cond_5

    .line 22909
    const-string v2, "Babel_telephony"

    iget-object v0, v0, Leua;->c:Lerg;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x3e

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "TeleWifiCall.shouldFallbackToCellular, hangout state is null, "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {v2, v0, v4}, Lezi;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v1

    .line 22910
    goto/16 :goto_1

    .line 22914
    :cond_5
    const/16 v2, 0x3ec

    if-ne v7, v2, :cond_6

    .line 22915
    const-string v2, "Babel_telephony"

    iget-object v0, v0, Leua;->c:Lerg;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x39

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "TeleWifiCall.shouldFallbackToCellular, local user ended, "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {v2, v0, v4}, Lezi;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v1

    .line 22916
    goto/16 :goto_1

    .line 22920
    :cond_6
    iget v2, v0, Leua;->e:I

    if-eqz v2, :cond_7

    .line 22921
    const-string v2, "Babel_telephony"

    iget v4, v0, Leua;->e:I

    iget-object v0, v0, Leua;->c:Lerg;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, 0x45

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v6, "TeleWifiCall.shouldFallbackToCellular, PSTN error code: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {v2, v0, v4}, Lezi;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v1

    .line 22923
    goto/16 :goto_1

    .line 22927
    :cond_7
    iget-object v2, v0, Leua;->d:Lcgw;

    invoke-virtual {v2}, Lcgw;->C()Z

    move-result v2

    if-nez v2, :cond_8

    .line 22928
    const-string v2, "Babel_telephony"

    iget-object v0, v0, Leua;->c:Lerg;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x45

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "TeleWifiCall.shouldFallbackToCellular, not waiting for remote party, "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {v2, v0, v4}, Lezi;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v1

    .line 22930
    goto/16 :goto_1

    .line 22933
    :cond_8
    const-string v2, "Babel_telephony"

    iget-object v0, v0, Leua;->c:Lerg;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x37

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "TeleWifiCall.shouldFallbackToCellular, returning true, "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {v2, v0, v4}, Lezi;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v8

    .line 22934
    goto/16 :goto_1

    .line 23954
    :cond_9
    new-instance v0, Letc;

    iget-object v1, v4, Leua;->a:Landroid/content/Context;

    iget-object v4, v4, Leua;->c:Lerg;

    .line 23955
    invoke-virtual {v4}, Lerg;->i()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v9}, Lerg;->g()Z

    move-result v6

    move-object v4, v3

    invoke-direct/range {v0 .. v6}, Letc;-><init>(Landroid/content/Context;Landroid/telecom/RemoteConnection;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 23954
    invoke-virtual {v9, v0}, Lerg;->b(Leqs;)V

    .line 23956
    invoke-virtual {v9}, Lerg;->x()V

    move v0, v8

    .line 23957
    goto/16 :goto_2

    .line 1043
    :cond_a
    iget-object v0, p0, Leud;->a:Leua;

    .line 25070
    iget v0, v0, Leua;->e:I

    .line 1043
    if-eq v0, v10, :cond_b

    const/16 v0, 0x3f3

    if-ne v7, v0, :cond_d

    iget-object v0, p0, Leud;->a:Leua;

    .line 26070
    iget v0, v0, Leua;->e:I

    .line 1044
    if-eqz v0, :cond_d

    .line 1045
    :cond_b
    iget-object v6, p0, Leud;->a:Leua;

    iget-object v1, p0, Leud;->a:Leua;

    iget-object v0, p0, Leud;->a:Leua;

    .line 27070
    iget v5, v0, Leua;->e:I

    .line 28861
    invoke-static {v7}, Laal;->i(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 29241
    packed-switch v5, :pswitch_data_0

    .line 29275
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v4, 0x27

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "PstnStateErrorType.UNKNOWN: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 28862
    :goto_4
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    add-int/2addr v7, v9

    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 28863
    iget-object v0, v1, Leua;->a:Landroid/content/Context;

    .line 29280
    packed-switch v5, :pswitch_data_1

    :pswitch_0
    move-object v2, v3

    .line 28864
    :goto_5
    if-ne v5, v10, :cond_c

    .line 28865
    new-instance v0, Landroid/telecom/DisconnectCause;

    const/4 v1, 0x7

    const/16 v5, 0x11

    invoke-direct/range {v0 .. v5}, Landroid/telecom/DisconnectCause;-><init>(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;I)V

    .line 30070
    :goto_6
    invoke-virtual {v6, v0}, Leua;->a(Landroid/telecom/DisconnectCause;)V

    goto/16 :goto_3

    .line 29243
    :pswitch_1
    const-string v0, "PstnStateErrorType.ERROR_MEDIA_TIMEOUT"

    goto :goto_4

    .line 29245
    :pswitch_2
    const-string v0, "PstnStateErrorType.ERROR_MEDIA_IO_EXCEPTION"

    goto :goto_4

    .line 29247
    :pswitch_3
    const-string v0, "PstnStateErrorType.ERROR_UNEXPECTED_CLOSE_ENDPOINT"

    goto :goto_4

    .line 29249
    :pswitch_4
    const-string v0, "PstnStateErrorType.ERROR_JINGLE_TERMINATE"

    goto :goto_4

    .line 29251
    :pswitch_5
    const-string v0, "PstnStateErrorType.ERROR_DEBUG_COMMAND"

    goto :goto_4

    .line 29253
    :pswitch_6
    const-string v0, "PstnStateErrorType.ERROR_SERVER_SHUTDOWN"

    goto :goto_4

    .line 29255
    :pswitch_7
    const-string v0, "PstnStateErrorType.ERROR_INSUFFICIENT_FUNDS"

    goto :goto_4

    .line 29257
    :pswitch_8
    const-string v0, "PstnStateErrorType.ERROR_BUSY"

    goto :goto_4

    .line 29259
    :pswitch_9
    const-string v0, "PstnStateErrorType.ERROR_TPAPI"

    goto :goto_4

    .line 29261
    :pswitch_a
    const-string v0, "PstnStateErrorType.ERROR_CONNECTION_FAILED"

    goto :goto_4

    .line 29263
    :pswitch_b
    const-string v0, "PstnStateErrorType.ERROR_CANNOT_CALL_YOURSELF"

    goto :goto_4

    .line 29265
    :pswitch_c
    const-string v0, "PstnStateErrorType.ERROR_USER_ALREADY_IN_CALL "

    goto :goto_4

    .line 29267
    :pswitch_d
    const-string v0, "PstnStateErrorType.ERROR_FAILOVER_FAILED "

    goto :goto_4

    .line 29269
    :pswitch_e
    const-string v0, "PstnStateErrorType.ERROR_INCOMING_CALL_ANSWERED_ELSEWHERE"

    goto :goto_4

    .line 29271
    :pswitch_f
    const-string v0, "PstnStateErrorType.ERROR_INCOMING_CALL_WENT_TO_VOICEMAIL"

    goto :goto_4

    .line 29273
    :pswitch_10
    const-string v0, "PstnStateErrorType.ERROR_CONNECTION_TIMEOUT"

    goto :goto_4

    .line 29282
    :pswitch_11
    sget v1, Laal;->qX:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_5

    .line 29284
    :pswitch_12
    sget v1, Laal;->qZ:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_5

    .line 29286
    :pswitch_13
    sget v1, Laal;->qY:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_5

    .line 28868
    :cond_c
    new-instance v0, Landroid/telecom/DisconnectCause;

    const/16 v5, 0x15

    move v1, v8

    invoke-direct/range {v0 .. v5}, Landroid/telecom/DisconnectCause;-><init>(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;I)V

    goto :goto_6

    .line 1047
    :cond_d
    iget-object v0, p0, Leud;->a:Leua;

    iget-object v1, p0, Leud;->a:Leua;

    .line 31070
    invoke-virtual {v1, v7}, Leua;->d(I)Landroid/telecom/DisconnectCause;

    move-result-object v1

    .line 32070
    invoke-virtual {v0, v1}, Leua;->a(Landroid/telecom/DisconnectCause;)V

    goto/16 :goto_3

    :cond_e
    move v7, v8

    goto/16 :goto_0

    .line 29241
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
    .end packed-switch

    .line 29280
    :pswitch_data_1
    .packed-switch 0x7
        :pswitch_12
        :pswitch_11
        :pswitch_0
        :pswitch_13
    .end packed-switch
.end method

.method public a(Lhil;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1004
    const-string v0, "Babel_telephony"

    iget-object v1, p0, Leud;->a:Leua;

    .line 10070
    iget-object v1, v1, Leua;->c:Lerg;

    .line 1004
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x35

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "TeleWifiCall.onFirstEndpointWithEarlyMediaConnected, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lezi;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1005
    iget-object v0, p0, Leud;->a:Leua;

    .line 11070
    iget-object v0, v0, Leua;->c:Lerg;

    .line 1005
    if-eqz v0, :cond_0

    .line 1006
    iget-object v0, p0, Leud;->a:Leua;

    .line 12070
    iget-object v0, v0, Leua;->c:Lerg;

    .line 1006
    invoke-virtual {v0, v4}, Lerg;->setRingbackRequested(Z)V

    .line 1007
    iget-object v0, p0, Leud;->a:Leua;

    .line 13070
    iget-object v0, v0, Leua;->c:Lerg;

    .line 1007
    invoke-virtual {v0}, Lerg;->x()V

    .line 1009
    :cond_0
    return-void
.end method

.method public a(Lhip;)V
    .locals 8

    .prologue
    .line 1053
    iget-object v0, p0, Leud;->a:Leua;

    .line 33070
    iget-object v0, v0, Leua;->c:Lerg;

    .line 1053
    if-eqz v0, :cond_0

    .line 1054
    invoke-virtual {p1}, Lhip;->v()Ljava/lang/String;

    move-result-object v0

    .line 1055
    invoke-virtual {p1}, Lhip;->a()Ljava/lang/String;

    move-result-object v1

    .line 1056
    const-string v2, "Babel_telephony"

    .line 1057
    invoke-static {v0}, Laal;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Leud;->a:Leua;

    .line 34070
    iget-object v4, v4, Leua;->c:Lerg;

    .line 1058
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, 0x3f

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v6, v7

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v6, v7

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v6, "TeleWifiCall.onMucConnected, handoffNumber: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ", participantId: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ", "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    .line 1056
    invoke-static {v2, v3, v4}, Lezi;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1060
    iget-object v2, p0, Leud;->a:Leua;

    .line 35070
    iget-object v2, v2, Leua;->c:Lerg;

    .line 1060
    invoke-virtual {v2, v0}, Lerg;->a(Ljava/lang/String;)V

    .line 1061
    iget-object v0, p0, Leud;->a:Leua;

    .line 36070
    iget-object v0, v0, Leua;->c:Lerg;

    .line 1061
    invoke-virtual {v0, v1}, Lerg;->e(Ljava/lang/String;)V

    .line 1062
    iget-object v0, p0, Leud;->a:Leua;

    .line 37070
    iget-object v0, v0, Leua;->c:Lerg;

    .line 1062
    iget-object v1, p0, Leud;->a:Leua;

    .line 38070
    iget-object v1, v1, Leua;->d:Lcgw;

    .line 1062
    invoke-virtual {v1}, Lcgw;->e()Lcgs;

    move-result-object v1

    invoke-virtual {v1}, Lcgs;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lerg;->c(Ljava/lang/String;)V

    .line 1064
    iget-object v0, p0, Leud;->a:Leua;

    .line 39070
    iget-object v0, v0, Leua;->c:Lerg;

    .line 1064
    iget-object v1, p0, Leud;->a:Leua;

    .line 40070
    iget-object v1, v1, Leua;->d:Lcgw;

    .line 1064
    invoke-virtual {v1}, Lcgw;->q()Lhcs;

    move-result-object v1

    invoke-virtual {v1}, Lhcs;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lerg;->d(Ljava/lang/String;)V

    .line 1068
    iget-object v0, p0, Leud;->a:Leua;

    .line 41070
    iget-object v0, v0, Leua;->c:Lerg;

    .line 1068
    if-eqz v0, :cond_0

    iget-object v0, p0, Leud;->a:Leua;

    .line 42070
    iget-object v0, v0, Leua;->c:Lerg;

    .line 1068
    invoke-virtual {v0}, Lerg;->m()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1069
    iget-object v0, p0, Leud;->a:Leua;

    .line 43070
    invoke-virtual {v0}, Leua;->q()V

    .line 1072
    :cond_0
    return-void
.end method

.method public a(Lhkw;)V
    .locals 6

    .prologue
    .line 1076
    iget-object v0, p0, Leud;->a:Leua;

    .line 44070
    iget-object v0, v0, Leua;->g:Ljava/lang/String;

    .line 1076
    if-nez v0, :cond_0

    iget-object v0, p0, Leud;->a:Leua;

    .line 45070
    iget-object v0, v0, Leua;->d:Lcgw;

    .line 1076
    if-eqz v0, :cond_0

    iget-object v0, p0, Leud;->a:Leua;

    .line 46070
    iget-object v0, v0, Leua;->d:Lcgw;

    .line 1076
    invoke-virtual {v0}, Lcgw;->q()Lhcs;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1077
    iget-object v0, p0, Leud;->a:Leua;

    iget-object v1, p0, Leud;->a:Leua;

    .line 47070
    iget-object v1, v1, Leua;->d:Lcgw;

    .line 1077
    invoke-virtual {v1}, Lcgw;->q()Lhcs;

    move-result-object v1

    invoke-virtual {v1}, Lhcs;->h()Ljava/lang/String;

    move-result-object v1

    .line 48070
    iput-object v1, v0, Leua;->g:Ljava/lang/String;

    .line 1078
    iget-object v0, p0, Leud;->a:Leua;

    .line 49070
    iget-object v0, v0, Leua;->d:Lcgw;

    .line 1079
    invoke-virtual {v0}, Lcgw;->q()Lhcs;

    move-result-object v0

    .line 1080
    invoke-virtual {v0}, Lhcs;->k()Lhcw;

    move-result-object v0

    iget-object v1, p0, Leud;->a:Leua;

    .line 50070
    iget-object v1, v1, Leua;->c:Lerg;

    .line 1081
    invoke-virtual {v1}, Lerg;->h()Lest;

    move-result-object v1

    invoke-virtual {v1}, Lest;->c()I

    move-result v1

    invoke-virtual {v0, v1}, Lhcw;->a(I)V

    .line 1082
    iget-object v0, p0, Leud;->a:Leua;

    .line 50071
    iget-object v0, v0, Leua;->b:Ljava/lang/String;

    .line 1082
    if-eqz v0, :cond_0

    .line 1083
    iget-object v0, p0, Leud;->a:Leua;

    .line 50072
    iget-object v0, v0, Leua;->d:Lcgw;

    .line 1083
    invoke-virtual {v0}, Lcgw;->q()Lhcs;

    move-result-object v0

    invoke-virtual {v0}, Lhcs;->k()Lhcw;

    move-result-object v0

    const/4 v1, 0x2

    iget-object v2, p0, Leud;->a:Leua;

    .line 50073
    iget-object v2, v2, Leua;->b:Ljava/lang/String;

    .line 1083
    invoke-virtual {v0, v1, v2}, Lhcw;->a(ILjava/lang/String;)V

    .line 1088
    :cond_0
    const-string v0, "Babel_telephony"

    const-string v1, "TeleWifiCall.onCallJoin, "

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Leud;->a:Leua;

    .line 50074
    iget-object v2, v2, Leua;->c:Lerg;

    .line 1088
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x0

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lezi;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1092
    iget-object v0, p0, Leud;->a:Leua;

    .line 50075
    iget-boolean v0, v0, Leua;->f:Z

    .line 1092
    if-nez v0, :cond_1

    iget-object v0, p0, Leud;->a:Leua;

    .line 50076
    iget-object v0, v0, Leua;->c:Lerg;

    .line 1092
    if-eqz v0, :cond_1

    iget-object v0, p0, Leud;->a:Leua;

    .line 50077
    iget-object v0, v0, Leua;->c:Lerg;

    .line 1093
    invoke-virtual {v0}, Lerg;->getState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 1094
    iget-object v0, p0, Leud;->a:Leua;

    .line 50078
    iget-object v0, v0, Leua;->c:Lerg;

    .line 1094
    invoke-virtual {v0}, Lerg;->setActive()V

    .line 1096
    :cond_1
    return-void
.end method

.method public a(Lhkx;)V
    .locals 4

    .prologue
    .line 1100
    const-string v0, "Babel_telephony"

    .line 1101
    invoke-virtual {p1}, Lhkx;->g()Z

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x33

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "TeleWifiCall.onParticipantAdded, isLocalUser: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    .line 1100
    invoke-static {v0, v1, v2}, Lezi;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1102
    invoke-virtual {p1}, Lhkx;->g()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Leud;->a:Leua;

    .line 50079
    iget-object v0, v0, Leua;->c:Lerg;

    .line 1102
    if-eqz v0, :cond_0

    .line 1103
    iget-object v0, p0, Leud;->a:Leua;

    .line 50080
    iget-object v0, v0, Leua;->c:Lerg;

    .line 1103
    invoke-virtual {v0}, Lerg;->x()V

    .line 1105
    :cond_0
    return-void
.end method

.method public a(Lhky;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1157
    iget-object v0, p0, Leud;->a:Leua;

    .line 50085
    iget-object v0, v0, Leua;->d:Lcgw;

    .line 1157
    if-eqz v0, :cond_0

    iget-object v0, p0, Leud;->a:Leua;

    .line 50086
    iget-object v0, v0, Leua;->c:Lerg;

    .line 1157
    if-nez v0, :cond_1

    .line 1172
    :cond_0
    :goto_0
    return-void

    .line 1160
    :cond_1
    iget-object v0, p0, Leud;->a:Leua;

    .line 50087
    iget-object v0, v0, Leua;->d:Lcgw;

    .line 1160
    invoke-virtual {v0}, Lcgw;->l()Lbfd;

    move-result-object v0

    invoke-virtual {v0}, Lbfd;->g()I

    move-result v0

    .line 1161
    invoke-virtual {p1}, Lhky;->b()Ljuf;

    move-result-object v1

    .line 1162
    if-eqz v1, :cond_0

    iget-object v2, v1, Ljuf;->b:Ljava/lang/Integer;

    if-eqz v2, :cond_0

    iget-object v2, v1, Ljuf;->a:Ljava/lang/Integer;

    .line 1163
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 50088
    sget-object v2, Ldvp;->H:Ldml;

    invoke-virtual {v2, v0}, Ldml;->b(I)Z

    move-result v2

    .line 1164
    if-nez v2, :cond_2

    .line 50089
    sget-object v2, Ldvp;->I:Ldml;

    invoke-virtual {v2, v0}, Ldml;->b(I)Z

    move-result v0

    .line 1165
    if-eqz v0, :cond_3

    .line 1166
    :cond_2
    iget-object v0, p0, Leud;->a:Leua;

    .line 50091
    const/4 v2, 0x1

    invoke-static {v1, v2}, Leua;->a(Ljuf;Z)I

    move-result v1

    .line 50092
    invoke-virtual {v0, v1}, Leua;->c(I)V

    .line 1167
    iget-object v0, p0, Leud;->a:Leua;

    .line 50094
    iget-object v0, v0, Leua;->a:Landroid/content/Context;

    .line 1167
    iget-object v2, p0, Leud;->a:Leua;

    .line 50095
    iget-object v2, v2, Leua;->c:Lerg;

    .line 1167
    invoke-static {v0, v2, v1}, Leru;->a(Landroid/content/Context;Lerg;I)V

    goto :goto_0

    .line 50096
    :cond_3
    invoke-static {v1, v4}, Leua;->a(Ljuf;Z)I

    goto :goto_0
.end method

.method public a(Ljuk;)V
    .locals 18

    .prologue
    .line 1118
    move-object/from16 v0, p1

    iget-object v1, v0, Ljuk;->d:[Ljun;

    array-length v1, v1

    if-nez v1, :cond_1

    .line 1153
    :cond_0
    :goto_0
    return-void

    .line 1121
    :cond_1
    move-object/from16 v0, p1

    iget-object v1, v0, Ljuk;->d:[Ljun;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    .line 1122
    iget-object v2, v1, Ljun;->a:Ljava/lang/Integer;

    .line 50083
    const/4 v3, 0x0

    invoke-static {v2, v3}, Laal;->a(Ljava/lang/Integer;I)I

    move-result v2

    .line 1123
    iget-object v3, v1, Ljun;->k:Ljava/lang/Integer;

    .line 50084
    const/4 v4, 0x0

    invoke-static {v3, v4}, Laal;->a(Ljava/lang/Integer;I)I

    move-result v3

    .line 1125
    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_2

    .line 1126
    const-string v4, "Babel_telephony"

    const-string v5, "TeleWifiCall.onMediaStats, Voice receiver stats\nmediaStats bytes_rcvd: "

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, v1, Ljun;->i:Ljava/lang/Long;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    iget-object v7, v1, Ljun;->j:Ljava/lang/Integer;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    iget-object v8, v1, Ljun;->b:Ljava/lang/Integer;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    iget-object v9, v1, Ljun;->e:Ljava/lang/Integer;

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    iget-object v10, v1, Ljun;->w:Ljava/lang/Integer;

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    iget-object v11, v1, Ljun;->y:Ljava/lang/Integer;

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    iget-object v12, v1, Ljun;->m:Ljava/lang/Integer;

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    iget-object v13, v1, Ljun;->Z:Ljava/lang/Float;

    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    iget-object v14, v1, Ljun;->aa:Ljava/lang/Float;

    invoke-static {v14}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v16

    move/from16 v0, v16

    add-int/lit16 v0, v0, 0xd7

    move/from16 v16, v0

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v17

    add-int v16, v16, v17

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v17

    add-int v16, v16, v17

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v17

    add-int v16, v16, v17

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v17

    add-int v16, v16, v17

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v17

    add-int v16, v16, v17

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v17

    add-int v16, v16, v17

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v17

    add-int v16, v16, v17

    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v17

    add-int v16, v16, v17

    invoke-static {v14}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v17

    add-int v16, v16, v17

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\nmediaStats packets_rcvd:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\nmediaStats fraction_lost:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\nmediaStats jitter_ms:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\nmediaStats jitter_buffer_ms:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\nmediaStats delay_estimate_ms: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\nmediaStats audio_level:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\nmediaStats expand_rate: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\nmediaStats speech_expand_rate: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v4, v5, v6}, Lezi;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1138
    :cond_2
    if-nez v3, :cond_3

    const/4 v4, 0x1

    if-ne v2, v4, :cond_3

    .line 1139
    const-string v4, "Babel_telephony"

    const-string v5, "TeleWifiCall.onMediaStats, Voice sender stats\nmediaStats bytes_sent: "

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, v1, Ljun;->g:Ljava/lang/Long;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    iget-object v7, v1, Ljun;->h:Ljava/lang/Integer;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    iget-object v8, v1, Ljun;->b:Ljava/lang/Integer;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    iget-object v9, v1, Ljun;->f:Ljava/lang/Integer;

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    iget-object v10, v1, Ljun;->e:Ljava/lang/Integer;

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    iget-object v11, v1, Ljun;->m:Ljava/lang/Integer;

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    add-int/lit8 v13, v13, 0x7a

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v14

    add-int/2addr v13, v14

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v14

    add-int/2addr v13, v14

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v14

    add-int/2addr v13, v14

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v14

    add-int/2addr v13, v14

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v14

    add-int/2addr v13, v14

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v14

    add-int/2addr v13, v14

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\nmediaStats packets_sent: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\nmediaStats fraction_lost: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\nmediaStats rtt_ms: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\nmediaStats jitter_ms: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\nmediaStats audio_level: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v4, v5, v6}, Lezi;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1148
    :cond_3
    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 1149
    const-string v2, "Babel_telephony"

    const-string v3, "TeleWifiCall.onMediaStats, Voice connection stats\nmediaStats available_receive_bitrate: "

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, v1, Ljun;->A:Ljava/lang/Integer;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    iget-object v1, v1, Ljun;->z:Ljava/lang/Integer;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, 0x25

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v6, v7

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v6, v7

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\nmediaStats available_send_bitrate: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v1, v3}, Lezi;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0
.end method

.method public a(Lkju;)V
    .locals 3

    .prologue
    .line 1109
    iget-object v0, p0, Leud;->a:Leua;

    .line 50081
    iget-object v0, v0, Leua;->h:Lero;

    .line 1109
    if-eqz v0, :cond_0

    .line 1110
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    .line 1111
    const/4 v1, 0x0

    iget-object v2, p0, Leud;->a:Leua;

    .line 50082
    iget-object v2, v2, Leua;->h:Lero;

    .line 1111
    invoke-virtual {v2}, Lero;->a()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 1112
    iput-object v0, p1, Lkju;->n:[Ljava/lang/String;

    .line 1114
    :cond_0
    return-void
.end method

.method public b()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 995
    const-string v0, "Babel_telephony"

    iget-object v1, p0, Leud;->a:Leua;

    .line 6070
    iget-object v1, v1, Leua;->c:Lerg;

    .line 995
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x28

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "TeleWifiCall.onOutgoingRingtoneStopped, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lezi;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 996
    iget-object v0, p0, Leud;->a:Leua;

    .line 7070
    iget-object v0, v0, Leua;->c:Lerg;

    .line 996
    if-eqz v0, :cond_0

    .line 997
    iget-object v0, p0, Leud;->a:Leua;

    .line 8070
    iget-object v0, v0, Leua;->c:Lerg;

    .line 997
    invoke-virtual {v0, v4}, Lerg;->setRingbackRequested(Z)V

    .line 998
    iget-object v0, p0, Leud;->a:Leua;

    .line 9070
    iget-object v0, v0, Leua;->c:Lerg;

    .line 998
    invoke-virtual {v0}, Lerg;->x()V

    .line 1000
    :cond_0
    return-void
.end method

.method public b(Z)V
    .locals 4

    .prologue
    .line 1013
    const-string v0, "Babel_telephony"

    iget-object v1, p0, Leud;->a:Leua;

    .line 14070
    iget-object v1, v1, Leua;->c:Lerg;

    .line 1014
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x3a

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "TeleWifiCall.onOutgoingInviteEnded, terminateCall: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    .line 1013
    invoke-static {v0, v1, v2}, Lezi;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1015
    if-nez p1, :cond_0

    iget-object v0, p0, Leud;->a:Leua;

    .line 15070
    iget-object v0, v0, Leua;->c:Lerg;

    .line 1015
    if-eqz v0, :cond_0

    iget-object v0, p0, Leud;->a:Leua;

    .line 16070
    iget-object v0, v0, Leua;->c:Lerg;

    .line 1016
    invoke-virtual {v0}, Lerg;->getState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 1017
    iget-object v0, p0, Leud;->a:Leua;

    .line 17070
    iget-object v0, v0, Leua;->c:Lerg;

    .line 1017
    invoke-virtual {v0}, Lerg;->setActive()V

    .line 1018
    iget-object v0, p0, Leud;->a:Leua;

    .line 18070
    iget-object v0, v0, Leua;->c:Lerg;

    .line 1018
    invoke-virtual {v0}, Lerg;->x()V

    .line 1020
    :cond_0
    return-void
.end method

.method public c(I)Z
    .locals 4

    .prologue
    .line 1025
    const-string v0, "Babel_telephony"

    iget-object v1, p0, Leud;->a:Leua;

    .line 19070
    iget-object v1, v1, Leua;->c:Lerg;

    .line 1026
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x44

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "TeleWifiCall.maybeDisplayPstnEndpointExitError, error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    .line 1025
    invoke-static {v0, v1, v2}, Lezi;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1027
    iget-object v0, p0, Leud;->a:Leua;

    .line 20070
    iput p1, v0, Leua;->e:I

    .line 1029
    const/4 v0, 0x1

    return v0
.end method

.method public i()V
    .locals 4

    .prologue
    .line 986
    const-string v0, "Babel_telephony"

    iget-object v1, p0, Leud;->a:Leua;

    .line 2070
    iget-object v1, v1, Leua;->c:Lerg;

    .line 986
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x28

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "TeleWifiCall.onOutgoingRingtoneStarted, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lezi;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 987
    iget-object v0, p0, Leud;->a:Leua;

    .line 3070
    iget-object v0, v0, Leua;->c:Lerg;

    .line 987
    if-eqz v0, :cond_0

    .line 988
    iget-object v0, p0, Leud;->a:Leua;

    .line 4070
    iget-object v0, v0, Leua;->c:Lerg;

    .line 988
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lerg;->setRingbackRequested(Z)V

    .line 989
    iget-object v0, p0, Leud;->a:Leua;

    .line 5070
    iget-object v0, v0, Leua;->c:Lerg;

    .line 989
    invoke-virtual {v0}, Lerg;->x()V

    .line 991
    :cond_0
    return-void
.end method
