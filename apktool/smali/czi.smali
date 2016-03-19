.class Lczi;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcze;
.implements Ldxj;


# instance fields
.field private final a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lczi;->a:Landroid/content/Context;

    .line 30
    return-void
.end method

.method static a(Landroid/content/Context;I)Z
    .locals 6

    .prologue
    .line 75
    const-class v0, Lhpz;

    .line 76
    invoke-static {p0, v0}, Lilh;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhpz;

    .line 77
    invoke-interface {v0, p1}, Lhpz;->a(I)Lhqb;

    move-result-object v0

    const-string v1, "peer_to_peer_acknowledgment_needed"

    .line 78
    invoke-interface {v0, v1}, Lhqb;->d(Ljava/lang/String;)Z

    move-result v0

    .line 79
    const-string v1, "Babel"

    const-string v2, "isPeerToPeerAcknowledgementNeeded: %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 80
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    .line 79
    invoke-static {v1, v2, v3}, Lezi;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 81
    return v0
.end method


# virtual methods
.method public a(Lhqe;Ldrl;)V
    .locals 6

    .prologue
    .line 50
    invoke-virtual {p2}, Ldrl;->n()Lbfe;

    move-result-object v0

    iget-boolean v0, v0, Lbfe;->w:Z

    .line 51
    const-string v1, "Babel"

    const-string v2, "Setting isPeerToPeerAcknowledgmentNeeded from selfInfoResponse: %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 52
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    .line 51
    invoke-static {v1, v2, v3}, Lezi;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 53
    const-string v1, "peer_to_peer_acknowledgment_needed"

    invoke-interface {p1, v1, v0}, Lhqe;->c(Ljava/lang/String;Z)Lhqe;

    .line 54
    return-void
.end method

.method public a(I)Z
    .locals 8

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 58
    iget-object v2, p0, Lczi;->a:Landroid/content/Context;

    invoke-static {v2, p1}, Lczi;->a(Landroid/content/Context;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1101
    sget-object v2, Ldvp;->c:Ldml;

    invoke-virtual {v2, p1}, Ldml;->b(I)Z

    move-result v2

    .line 1102
    sget-object v3, Ldvp;->c:Ldml;

    invoke-virtual {v3}, Ldml;->d()Ljava/lang/Boolean;

    move-result-object v3

    .line 1103
    sget-object v4, Ldvp;->c:Ldml;

    invoke-virtual {v4, p1}, Ldml;->a(I)Ljava/lang/Boolean;

    move-result-object v4

    .line 1104
    const-string v5, "%s experiment enabled? %s, (def=%s srv=%s)"

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/Object;

    const-string v7, "93dbdb4d"

    aput-object v7, v6, v1

    .line 1105
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v6, v0

    const/4 v7, 0x2

    aput-object v3, v6, v7

    const/4 v3, 0x3

    aput-object v4, v6, v3

    .line 1104
    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 59
    if-eqz v2, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public b(I)Lau;
    .locals 1

    .prologue
    .line 65
    invoke-virtual {p0, p1}, Lczi;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 66
    new-instance v0, Lczf;

    invoke-direct {v0}, Lczf;-><init>()V

    .line 67
    invoke-virtual {v0, p1}, Lczf;->b(I)V

    .line 68
    invoke-virtual {v0, p0}, Lczf;->a(Lczi;)V

    .line 71
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c(I)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 37
    const-string v0, "Babel"

    const-string v1, "setPeerToPeerAcknowledged"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lezi;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 40
    const/16 v0, 0x1f

    invoke-static {p1, v0, v3}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->a(IIZ)I

    .line 42
    iget-object v0, p0, Lczi;->a:Landroid/content/Context;

    const-class v1, Lhpz;

    invoke-static {v0, v1}, Lilh;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhpz;

    invoke-interface {v0, p1}, Lhpz;->b(I)Lhqc;

    move-result-object v0

    const-string v1, "peer_to_peer_acknowledgment_needed"

    .line 43
    invoke-virtual {v0, v1, v3}, Lhqc;->b(Ljava/lang/String;Z)Lhqc;

    move-result-object v0

    invoke-virtual {v0}, Lhqc;->d()I

    .line 44
    return-void
.end method
