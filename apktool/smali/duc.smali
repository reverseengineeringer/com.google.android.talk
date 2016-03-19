.class final Lduc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lebb;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lhqe;Ldrz;)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 17
    invoke-virtual {p2}, Ldrz;->k()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 18
    invoke-virtual {p2}, Ldrz;->p()Z

    move-result v0

    .line 1134
    :goto_0
    const-string v2, "Babel"

    const-string v3, "account_name"

    .line 1135
    invoke-interface {p1, v3}, Lhqe;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lezi;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x57

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "PstnUtilImpl.setAccountIsRegisteredForIncomingPstnCalls, account: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", isRegistered: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v1, v1, [Ljava/lang/Object;

    .line 1134
    invoke-static {v2, v3, v1}, Lezi;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1137
    const-string v1, "registered_for_incoming_pstn_calls"

    invoke-interface {p1, v1, v0}, Lhqe;->c(Ljava/lang/String;Z)Lhqe;

    .line 21
    return-void

    :cond_0
    move v0, v1

    goto :goto_0
.end method
