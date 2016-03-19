.class final Letd;
.super Landroid/telecom/RemoteConnection$Callback;
.source "SourceFile"


# instance fields
.field final synthetic a:Letc;


# direct methods
.method constructor <init>(Letc;)V
    .locals 0

    .prologue
    .line 313
    iput-object p1, p0, Letd;->a:Letc;

    invoke-direct {p0}, Landroid/telecom/RemoteConnection$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAddressChanged(Landroid/telecom/RemoteConnection;Landroid/net/Uri;I)V
    .locals 8

    .prologue
    const/4 v1, 0x0

    const/4 v7, 0x0

    .line 417
    const-string v2, "Babel_telephony"

    .line 37433
    if-nez p2, :cond_1

    move-object v0, v1

    .line 418
    :goto_0
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Letd;->a:Letc;

    .line 38030
    iget-object v3, v3, Letc;->d:Lerg;

    .line 418
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x23

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v5, v6

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "TeleRemoteCall.onAddressChanged, "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ", "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v3, v7, [Ljava/lang/Object;

    .line 417
    invoke-static {v2, v0, v3}, Lezi;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 419
    if-nez p2, :cond_4

    if-nez p3, :cond_4

    iget-object v0, p0, Letd;->a:Letc;

    .line 39030
    iget-object v0, v0, Letc;->d:Lerg;

    .line 419
    if-eqz v0, :cond_4

    iget-object v0, p0, Letd;->a:Letc;

    .line 40030
    iget-object v0, v0, Letc;->d:Lerg;

    .line 420
    invoke-virtual {v0}, Lerg;->getState()I

    move-result v0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_0

    iget-object v0, p0, Letd;->a:Letc;

    .line 41030
    iget-object v0, v0, Letc;->d:Lerg;

    .line 421
    invoke-virtual {v0}, Lerg;->getState()I

    move-result v0

    if-nez v0, :cond_4

    .line 424
    :cond_0
    const-string v0, "Babel_telephony"

    const-string v1, "TeleRemoteCall.onAddressChanged, ignoring null address"

    new-array v2, v7, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lezi;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 447
    :goto_1
    return-void

    .line 37435
    :cond_1
    invoke-virtual {p2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v3, "tel"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 37436
    const-string v0, "tel:"

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Laal;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_2
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 37438
    :cond_3
    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lezi;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 428
    :cond_4
    iget-object v0, p0, Letd;->a:Letc;

    .line 42030
    iget-object v0, v0, Letc;->d:Lerg;

    .line 428
    if-eqz v0, :cond_5

    iget-object v0, p0, Letd;->a:Letc;

    .line 43030
    invoke-virtual {v0}, Letc;->o()Z

    move-result v0

    .line 428
    if-nez v0, :cond_5

    iget-object v0, p0, Letd;->a:Letc;

    .line 44030
    iget-object v0, v0, Letc;->d:Lerg;

    .line 429
    invoke-virtual {v0}, Lerg;->f()Lesw;

    move-result-object v0

    invoke-virtual {v0, p2}, Lesw;->a(Landroid/net/Uri;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 432
    iget-object v0, p0, Letd;->a:Letc;

    .line 45030
    iget-object v0, v0, Letc;->d:Lerg;

    .line 432
    invoke-virtual {v0}, Lerg;->f()Lesw;

    move-result-object v0

    invoke-virtual {v0}, Lesw;->q()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 433
    iget-object v0, p0, Letd;->a:Letc;

    .line 46030
    iget-object v0, v0, Letc;->d:Lerg;

    .line 47506
    if-nez p2, :cond_6

    .line 433
    :goto_2
    invoke-virtual {v0, v1, p3}, Lerg;->setAddress(Landroid/net/Uri;I)V

    .line 445
    :cond_5
    :goto_3
    iget-object v0, p0, Letd;->a:Letc;

    .line 50033
    iget-object v0, v0, Letc;->c:Lete;

    .line 445
    invoke-virtual {v0, p2}, Lete;->a(Landroid/net/Uri;)V

    goto :goto_1

    .line 47509
    :cond_6
    invoke-virtual {p2}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v1

    .line 47510
    invoke-virtual {p2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    const-string v3, "tel"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 47511
    invoke-static {v1}, Lezm;->c(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 47514
    invoke-static {}, Lezm;->i()Ljava/lang/String;

    move-result-object v2

    .line 47513
    invoke-static {v1, v2}, Lezm;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 47512
    invoke-static {v1}, Laal;->r(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    goto :goto_2

    :cond_7
    move-object v1, p2

    .line 47516
    goto :goto_2

    .line 434
    :cond_8
    iget-object v0, p0, Letd;->a:Letc;

    .line 48030
    iget-object v0, v0, Letc;->d:Lerg;

    .line 434
    invoke-virtual {v0}, Lerg;->f()Lesw;

    move-result-object v0

    invoke-virtual {v0}, Lesw;->o()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 436
    const-string v1, "Babel_telephony"

    const-string v2, "TeleRemoteCall.onAddressChanged, showing un-remapped number: "

    iget-object v0, p0, Letd;->a:Letc;

    .line 49030
    iget-object v0, v0, Letc;->d:Lerg;

    .line 438
    invoke-virtual {v0}, Lerg;->f()Lesw;

    move-result-object v0

    invoke-virtual {v0}, Lesw;->c()Ljava/lang/String;

    move-result-object v0

    .line 437
    invoke-static {v0}, Laal;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_9

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_4
    new-array v2, v7, [Ljava/lang/Object;

    .line 436
    invoke-static {v1, v0, v2}, Lezi;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 439
    iget-object v0, p0, Letd;->a:Letc;

    .line 50030
    iget-object v0, v0, Letc;->d:Lerg;

    .line 439
    iget-object v1, p0, Letd;->a:Letc;

    .line 50031
    iget-object v1, v1, Letc;->d:Lerg;

    .line 440
    invoke-virtual {v1}, Lerg;->f()Lesw;

    move-result-object v1

    invoke-virtual {v1}, Lesw;->c()Ljava/lang/String;

    move-result-object v1

    .line 439
    invoke-static {v1}, Laal;->r(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, p3}, Lerg;->setAddress(Landroid/net/Uri;I)V

    goto :goto_3

    .line 437
    :cond_9
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_4

    .line 442
    :cond_a
    iget-object v0, p0, Letd;->a:Letc;

    .line 50032
    iget-object v0, v0, Letc;->d:Lerg;

    .line 442
    invoke-virtual {v0, p2, p3}, Lerg;->setAddress(Landroid/net/Uri;I)V

    goto/16 :goto_3
.end method

.method public onCallerDisplayNameChanged(Landroid/telecom/RemoteConnection;Ljava/lang/String;I)V
    .locals 4

    .prologue
    .line 452
    const-string v0, "Babel_telephony"

    iget-object v1, p0, Letd;->a:Letc;

    .line 50034
    iget-object v1, v1, Letc;->d:Lerg;

    .line 452
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x2b

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "TeleRemoteCall.onCallerDisplayNameChanged, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lezi;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 453
    iget-object v0, p0, Letd;->a:Letc;

    .line 50035
    iget-object v0, v0, Letc;->d:Lerg;

    .line 453
    if-eqz v0, :cond_0

    .line 454
    iget-object v0, p0, Letd;->a:Letc;

    .line 50036
    iget-object v0, v0, Letc;->d:Lerg;

    .line 454
    invoke-virtual {v0, p2, p3}, Lerg;->setCallerDisplayName(Ljava/lang/String;I)V

    .line 456
    :cond_0
    return-void
.end method

.method public onConferenceChanged(Landroid/telecom/RemoteConnection;Landroid/telecom/RemoteConference;)V
    .locals 7

    .prologue
    .line 500
    const-string v0, "Babel_telephony"

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Letd;->a:Letc;

    .line 50048
    iget-object v3, v3, Letc;->d:Lerg;

    .line 501
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x47

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v5, v6

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v5, v6

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "TeleRemoteCall.onConferenceChanged, remote connection: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ", conference: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    .line 500
    invoke-static {v0, v1, v2}, Lezi;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 502
    return-void
.end method

.method public onConferenceableConnectionsChanged(Landroid/telecom/RemoteConnection;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/telecom/RemoteConnection;",
            "Ljava/util/List",
            "<",
            "Landroid/telecom/RemoteConnection;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 482
    const-string v0, "Babel_telephony"

    iget-object v1, p0, Letd;->a:Letc;

    .line 50044
    iget-object v1, v1, Letc;->d:Lerg;

    .line 482
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x33

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "TeleRemoteCall.onConferenceableConnectionsChanged, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lezi;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 483
    iget-object v0, p0, Letd;->a:Letc;

    .line 50045
    iget-object v0, v0, Letc;->d:Lerg;

    .line 483
    if-eqz v0, :cond_2

    .line 485
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 486
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/RemoteConnection;

    .line 487
    iget-object v3, p0, Letd;->a:Letc;

    .line 50046
    iget-object v3, v3, Letc;->d:Lerg;

    .line 488
    invoke-virtual {v3}, Lerg;->d()Lcom/google/android/apps/hangouts/telephony/TeleConnectionService;

    move-result-object v3

    .line 487
    invoke-static {v0, v3}, Letc;->a(Landroid/telecom/RemoteConnection;Lcom/google/android/apps/hangouts/telephony/TeleConnectionService;)Lerg;

    move-result-object v0

    .line 489
    if-eqz v0, :cond_0

    .line 490
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 493
    :cond_1
    iget-object v0, p0, Letd;->a:Letc;

    .line 50047
    iget-object v0, v0, Letc;->d:Lerg;

    .line 493
    invoke-virtual {v0, v1}, Lerg;->setConferenceableConnections(Ljava/util/List;)V

    .line 495
    :cond_2
    return-void
.end method

.method public onConnectionCapabilitiesChanged(Landroid/telecom/RemoteConnection;I)V
    .locals 4

    .prologue
    .line 383
    const-string v0, "Babel_telephony"

    iget-object v1, p0, Letd;->a:Letc;

    .line 26030
    iget-object v1, v1, Letc;->d:Lerg;

    .line 384
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x4b

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "TeleRemoteCall.onConnectionCapabilitiesChanged, capabilities: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

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

    .line 383
    invoke-static {v0, v1, v2}, Lezi;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 385
    iget-object v0, p0, Letd;->a:Letc;

    .line 27030
    iget-object v0, v0, Letc;->d:Lerg;

    .line 385
    if-eqz v0, :cond_0

    .line 386
    iget-object v0, p0, Letd;->a:Letc;

    .line 28030
    iget-object v0, v0, Letc;->d:Lerg;

    .line 386
    invoke-virtual {v0, p2}, Lerg;->setConnectionCapabilities(I)V

    .line 388
    :cond_0
    return-void
.end method

.method public onDestroyed(Landroid/telecom/RemoteConnection;)V
    .locals 5

    .prologue
    .line 460
    const-string v0, "Babel_telephony"

    iget-object v1, p0, Letd;->a:Letc;

    .line 50037
    iget-object v1, v1, Letc;->d:Lerg;

    .line 460
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x1c

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "TeleRemoteCall.onDestroyed, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lezi;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 461
    if-eqz p1, :cond_0

    .line 462
    iget-object v0, p0, Letd;->a:Letc;

    .line 50038
    iget-object v0, v0, Letc;->e:Letd;

    .line 462
    invoke-virtual {p1, v0}, Landroid/telecom/RemoteConnection;->unregisterCallback(Landroid/telecom/RemoteConnection$Callback;)V

    .line 465
    :cond_0
    iget-object v0, p0, Letd;->a:Letc;

    .line 50039
    iget-object v0, v0, Letc;->b:Ljava/util/List;

    .line 465
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Leqt;

    .line 466
    iget-object v2, p0, Letd;->a:Letc;

    new-instance v3, Landroid/telecom/DisconnectCause;

    const/4 v4, 0x2

    invoke-direct {v3, v4}, Landroid/telecom/DisconnectCause;-><init>(I)V

    invoke-interface {v0, v2, v3}, Leqt;->a(Leqs;Landroid/telecom/DisconnectCause;)V

    goto :goto_0

    .line 472
    :cond_1
    iget-object v0, p0, Letd;->a:Letc;

    .line 50040
    iget-object v0, v0, Letc;->d:Lerg;

    .line 472
    if-eqz v0, :cond_2

    iget-object v0, p0, Letd;->a:Letc;

    .line 50041
    iget-object v0, v0, Letc;->d:Lerg;

    .line 472
    invoke-virtual {v0}, Lerg;->k()Leru;

    move-result-object v0

    if-nez v0, :cond_2

    .line 473
    iget-object v0, p0, Letd;->a:Letc;

    .line 50042
    iget-object v0, v0, Letc;->d:Lerg;

    .line 473
    invoke-virtual {v0}, Lerg;->destroy()V

    .line 474
    iget-object v0, p0, Letd;->a:Letc;

    .line 50043
    const/4 v1, 0x0

    iput-object v1, v0, Letc;->d:Lerg;

    .line 476
    :cond_2
    return-void
.end method

.method public onDisconnected(Landroid/telecom/RemoteConnection;Landroid/telecom/DisconnectCause;)V
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x0

    .line 347
    const-string v0, "Babel_telephony"

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Letd;->a:Letc;

    .line 9030
    iget-object v2, v2, Letc;->d:Lerg;

    .line 347
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x28

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "TeleRemoteCall.onDisconnected, cause: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lezi;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 349
    iget-object v0, p0, Letd;->a:Letc;

    .line 10030
    iget-object v0, v0, Letc;->d:Lerg;

    .line 349
    if-eqz v0, :cond_0

    .line 351
    iget-object v0, p0, Letd;->a:Letc;

    .line 11030
    iget-object v0, v0, Letc;->d:Lerg;

    .line 351
    iget-object v1, p0, Letd;->a:Letc;

    invoke-virtual {v1}, Letc;->d()I

    move-result v1

    iget-object v2, p0, Letd;->a:Letc;

    .line 12030
    iget-object v2, v2, Letc;->c:Lete;

    .line 351
    invoke-virtual {v2}, Lete;->b()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lerg;->a(IJ)V

    .line 354
    :cond_0
    iget-object v0, p0, Letd;->a:Letc;

    .line 13030
    iget-object v0, v0, Letc;->d:Lerg;

    .line 354
    if-eqz v0, :cond_1

    iget-object v0, p0, Letd;->a:Letc;

    .line 14030
    iget-object v0, v0, Letc;->d:Lerg;

    .line 354
    invoke-virtual {v0}, Lerg;->k()Leru;

    move-result-object v0

    if-nez v0, :cond_1

    .line 356
    invoke-virtual {p2}, Landroid/telecom/DisconnectCause;->getCode()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Letd;->a:Letc;

    .line 15030
    invoke-virtual {v0}, Letc;->o()Z

    move-result v0

    .line 356
    if-eqz v0, :cond_2

    .line 357
    const-string v0, "Babel_telephony"

    const-string v1, "TeleRemoteCall.onDisconnected, handing off to wifi., "

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Letd;->a:Letc;

    .line 16030
    iget-object v2, v2, Letc;->d:Lerg;

    .line 357
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

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lezi;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 358
    iget-object v0, p0, Letd;->a:Letc;

    .line 17030
    iget-object v0, v0, Letc;->c:Lete;

    .line 358
    invoke-virtual {v0, v7}, Lete;->a(I)V

    .line 359
    iget-object v0, p0, Letd;->a:Letc;

    .line 18030
    iget-object v0, v0, Letc;->a:Landroid/content/Context;

    .line 359
    iget-object v1, p0, Letd;->a:Letc;

    .line 19030
    iget-object v1, v1, Letc;->d:Lerg;

    .line 359
    invoke-static {v0, v1, v7}, Leru;->b(Landroid/content/Context;Lerg;I)V

    .line 366
    :cond_1
    :goto_0
    iget-object v0, p0, Letd;->a:Letc;

    .line 22030
    iget-object v0, v0, Letc;->b:Ljava/util/List;

    .line 366
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Leqt;

    .line 367
    iget-object v2, p0, Letd;->a:Letc;

    invoke-interface {v0, v2, p2}, Leqt;->a(Leqs;Landroid/telecom/DisconnectCause;)V

    goto :goto_1

    .line 362
    :cond_2
    iget-object v0, p0, Letd;->a:Letc;

    .line 20030
    iget-object v0, v0, Letc;->d:Lerg;

    .line 362
    invoke-virtual {v0, p2}, Lerg;->setDisconnected(Landroid/telecom/DisconnectCause;)V

    .line 363
    iget-object v0, p0, Letd;->a:Letc;

    .line 21030
    iget-object v0, v0, Letc;->d:Lerg;

    .line 363
    invoke-static {v0, p2}, Laal;->a(Lerg;Landroid/telecom/DisconnectCause;)V

    goto :goto_0

    .line 369
    :cond_3
    return-void
.end method

.method public onPostDialWait(Landroid/telecom/RemoteConnection;Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 392
    const-string v0, "Babel_telephony"

    .line 393
    invoke-static {p2}, Lezi;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Letd;->a:Letc;

    .line 29030
    iget-object v2, v2, Letc;->d:Lerg;

    .line 393
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x32

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "TeleRemoteCall.onPostDialWait, remainingDigits: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    .line 392
    invoke-static {v0, v1, v2}, Lezi;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 394
    iget-object v0, p0, Letd;->a:Letc;

    .line 30030
    iget-object v0, v0, Letc;->d:Lerg;

    .line 394
    if-eqz v0, :cond_0

    .line 395
    iget-object v0, p0, Letd;->a:Letc;

    .line 31030
    iget-object v0, v0, Letc;->d:Lerg;

    .line 395
    invoke-virtual {v0, p2}, Lerg;->setPostDialWait(Ljava/lang/String;)V

    .line 397
    :cond_0
    return-void
.end method

.method public onRingbackRequested(Landroid/telecom/RemoteConnection;Z)V
    .locals 4

    .prologue
    .line 373
    const-string v0, "Babel_telephony"

    iget-object v1, p0, Letd;->a:Letc;

    .line 23030
    iget-object v1, v1, Letc;->d:Lerg;

    .line 374
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x35

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "TeleRemoteCall.onRingbackRequested, ringback: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

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

    .line 373
    invoke-static {v0, v1, v2}, Lezi;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 375
    iget-object v0, p0, Letd;->a:Letc;

    .line 24030
    iget-object v0, v0, Letc;->d:Lerg;

    .line 375
    if-eqz v0, :cond_0

    .line 376
    iget-object v0, p0, Letd;->a:Letc;

    .line 25030
    iget-object v0, v0, Letc;->d:Lerg;

    .line 376
    invoke-virtual {v0, p2}, Lerg;->setRingbackRequested(Z)V

    .line 378
    :cond_0
    return-void
.end method

.method public onStateChanged(Landroid/telecom/RemoteConnection;I)V
    .locals 7

    .prologue
    .line 316
    iget-object v0, p0, Letd;->a:Letc;

    .line 1030
    iget-object v0, v0, Letc;->d:Lerg;

    .line 316
    if-eqz v0, :cond_0

    .line 317
    const-string v0, "Babel_telephony"

    iget-object v1, p0, Letd;->a:Letc;

    .line 2030
    iget-object v1, v1, Letc;->d:Lerg;

    .line 318
    invoke-virtual {v1}, Lerg;->getState()I

    move-result v1

    invoke-static {v1}, Landroid/telecom/Connection;->stateToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 319
    invoke-static {p2}, Landroid/telecom/Connection;->stateToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Letd;->a:Letc;

    .line 3030
    iget-object v3, v3, Letc;->d:Lerg;

    .line 319
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x25

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v5, v6

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v5, v6

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "TeleRemoteCall.onStateChanged, "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " -> "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    .line 317
    invoke-static {v0, v1, v2}, Lezi;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 320
    packed-switch p2, :pswitch_data_0

    .line 340
    :cond_0
    :goto_0
    :pswitch_0
    iget-object v0, p0, Letd;->a:Letc;

    .line 8030
    iget-object v0, v0, Letc;->b:Ljava/util/List;

    .line 340
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Leqt;

    .line 341
    iget-object v2, p0, Letd;->a:Letc;

    invoke-interface {v0, v2, p2}, Leqt;->a(Leqs;I)V

    goto :goto_1

    .line 327
    :pswitch_1
    iget-object v0, p0, Letd;->a:Letc;

    .line 4030
    iget-object v0, v0, Letc;->d:Lerg;

    .line 327
    invoke-virtual {v0}, Lerg;->setRinging()V

    goto :goto_0

    .line 330
    :pswitch_2
    iget-object v0, p0, Letd;->a:Letc;

    .line 5030
    iget-object v0, v0, Letc;->d:Lerg;

    .line 330
    invoke-virtual {v0}, Lerg;->setDialing()V

    goto :goto_0

    .line 333
    :pswitch_3
    iget-object v0, p0, Letd;->a:Letc;

    .line 6030
    iget-object v0, v0, Letc;->d:Lerg;

    .line 333
    invoke-virtual {v0}, Lerg;->setActive()V

    goto :goto_0

    .line 336
    :pswitch_4
    iget-object v0, p0, Letd;->a:Letc;

    .line 7030
    iget-object v0, v0, Letc;->d:Lerg;

    .line 336
    invoke-virtual {v0}, Lerg;->setOnHold()V

    goto :goto_0

    .line 343
    :cond_1
    return-void

    .line 320
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public onStatusHintsChanged(Landroid/telecom/RemoteConnection;Landroid/telecom/StatusHints;)V
    .locals 4

    .prologue
    .line 409
    const-string v0, "Babel_telephony"

    iget-object v1, p0, Letd;->a:Letc;

    .line 35030
    iget-object v1, v1, Letc;->d:Lerg;

    .line 409
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x25

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "TeleRemoteCall.onStatusHintsChanged, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lezi;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 410
    iget-object v0, p0, Letd;->a:Letc;

    .line 36030
    iget-object v0, v0, Letc;->d:Lerg;

    .line 410
    if-eqz v0, :cond_0

    .line 411
    iget-object v0, p0, Letd;->a:Letc;

    .line 37030
    iget-object v0, v0, Letc;->d:Lerg;

    .line 411
    invoke-virtual {v0, p2}, Lerg;->setStatusHints(Landroid/telecom/StatusHints;)V

    .line 413
    :cond_0
    return-void
.end method

.method public onVoipAudioChanged(Landroid/telecom/RemoteConnection;Z)V
    .locals 4

    .prologue
    .line 401
    const-string v0, "Babel_telephony"

    iget-object v1, p0, Letd;->a:Letc;

    .line 32030
    iget-object v1, v1, Letc;->d:Lerg;

    .line 401
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x32

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "TeleRemoteCall.onVoipAudioChanged, isVoip: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

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

    invoke-static {v0, v1, v2}, Lezi;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 402
    iget-object v0, p0, Letd;->a:Letc;

    .line 33030
    iget-object v0, v0, Letc;->d:Lerg;

    .line 402
    if-eqz v0, :cond_0

    .line 403
    iget-object v0, p0, Letd;->a:Letc;

    .line 34030
    iget-object v0, v0, Letc;->d:Lerg;

    .line 403
    invoke-virtual {v0, p2}, Lerg;->setAudioModeIsVoip(Z)V

    .line 405
    :cond_0
    return-void
.end method
