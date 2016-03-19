.class Lcps;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcpl;
.implements Ldxj;


# instance fields
.field public a:Lcpt;

.field private final b:Landroid/content/Context;

.field private final c:Leot;

.field private d:Lawo;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const-class v0, Lawo;

    invoke-static {p1, v0}, Lilh;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lawo;

    iput-object v0, p0, Lcps;->d:Lawo;

    .line 43
    const-class v0, Leot;

    invoke-static {p1, v0}, Lilh;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Leot;

    iput-object v0, p0, Lcps;->c:Leot;

    .line 44
    iput-object p1, p0, Lcps;->b:Landroid/content/Context;

    .line 46
    return-void
.end method


# virtual methods
.method public a(Lbg;I)V
    .locals 2

    .prologue
    .line 111
    invoke-virtual {p0, p2}, Lcps;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 113
    new-instance v0, Lcpm;

    invoke-direct {v0}, Lcpm;-><init>()V

    .line 114
    invoke-virtual {v0, p0}, Lcpm;->a(Lcps;)V

    .line 115
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcpm;->a(Lbg;Ljava/lang/String;)V

    .line 117
    :cond_0
    return-void
.end method

.method public a(Lhqe;Ldrl;)V
    .locals 6

    .prologue
    .line 122
    invoke-virtual {p2}, Ldrl;->n()Lbfe;

    move-result-object v0

    iget-boolean v0, v0, Lbfe;->x:Z

    .line 123
    const-string v1, "Babel"

    const-string v2, "Setting hasInviteHappyStatePromoBeenSeen from selfInfoResponse: %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 126
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    .line 123
    invoke-static {v1, v2, v3}, Lezi;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 127
    const-string v1, "invite_happy_state_promo_seen"

    invoke-interface {p1, v1, v0}, Lhqe;->c(Ljava/lang/String;Z)Lhqe;

    .line 128
    return-void
.end method

.method public a(I)Z
    .locals 1

    .prologue
    .line 50
    new-instance v0, Lcpt;

    invoke-direct {v0, p1}, Lcpt;-><init>(I)V

    iput-object v0, p0, Lcps;->a:Lcpt;

    .line 1212
    sget-object v0, Ldvp;->k:Ldml;

    invoke-virtual {v0, p1}, Ldml;->b(I)Z

    move-result v0

    .line 52
    if-eqz v0, :cond_0

    .line 53
    invoke-static {}, Lbyp;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcps;->d:Lawo;

    .line 54
    invoke-interface {v0, p1}, Lawo;->p(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcps;->d:Lawo;

    .line 55
    invoke-interface {v0, p1}, Lawo;->k(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcps;->c:Leot;

    .line 56
    invoke-interface {v0, p1}, Leot;->a(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 57
    invoke-virtual {p0, p1}, Lcps;->d(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcps;->a:Lcpt;

    .line 58
    invoke-virtual {v0}, Lcpt;->a()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b(I)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 67
    const-string v0, "Babel"

    const-string v1, "setInviteHappyStatePromoSeen"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lezi;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 69
    invoke-static {}, Lebi;->b()Lebi;

    move-result-object v0

    .line 70
    invoke-static {v0, p1, v3}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->a(Lebi;IZ)V

    .line 75
    iget-object v0, p0, Lcps;->b:Landroid/content/Context;

    const-class v1, Lhpz;

    invoke-static {v0, v1}, Lilh;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhpz;

    .line 76
    invoke-interface {v0, p1}, Lhpz;->b(I)Lhqc;

    move-result-object v0

    const-string v1, "invite_happy_state_promo_seen"

    .line 77
    invoke-virtual {v0, v1, v3}, Lhqc;->b(Ljava/lang/String;Z)Lhqc;

    move-result-object v0

    .line 78
    invoke-virtual {v0}, Lhqc;->d()I

    .line 79
    return-void
.end method

.method public c(I)V
    .locals 3

    .prologue
    .line 85
    const-string v0, "Babel"

    const-string v1, "updateUserSettingsToHappyState"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lezi;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 87
    iget-object v0, p0, Lcps;->a:Lcpt;

    invoke-virtual {v0}, Lcpt;->b()V

    .line 88
    invoke-virtual {p0, p1}, Lcps;->b(I)V

    .line 89
    return-void
.end method

.method public d(I)Z
    .locals 6

    .prologue
    .line 97
    iget-object v0, p0, Lcps;->b:Landroid/content/Context;

    const-class v1, Lhpz;

    .line 98
    invoke-static {v0, v1}, Lilh;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhpz;

    .line 99
    invoke-interface {v0, p1}, Lhpz;->a(I)Lhqb;

    move-result-object v0

    const-string v1, "invite_happy_state_promo_seen"

    .line 100
    invoke-interface {v0, v1}, Lhqb;->d(Ljava/lang/String;)Z

    move-result v0

    .line 102
    const-string v1, "Babel"

    const-string v2, "hasUserSeenInviteHappyStatePromo: %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 103
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    .line 102
    invoke-static {v1, v2, v3}, Lezi;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 105
    return v0
.end method
