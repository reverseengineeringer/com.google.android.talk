.class final Lcja;
.super Lhjr;
.source "SourceFile"


# instance fields
.field final synthetic a:Lciu;


# direct methods
.method constructor <init>(Lciu;)V
    .locals 0

    .prologue
    .line 562
    iput-object p1, p0, Lcja;->a:Lciu;

    invoke-direct {p0}, Lhjr;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 580
    const-string v0, "Babel_calls"

    const-string v1, "onUnfocused for %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcja;->a:Lciu;

    invoke-virtual {v3}, Lciu;->l()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lezi;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 581
    iget-object v0, p0, Lcja;->a:Lciu;

    .line 3049
    iput-boolean v4, v0, Lciu;->k:Z

    .line 582
    iget-object v0, p0, Lcja;->a:Lciu;

    .line 4049
    iput-boolean v4, v0, Lciu;->l:Z

    .line 583
    iget-object v0, p0, Lcja;->a:Lciu;

    invoke-virtual {v0}, Lciu;->i()V

    .line 584
    return-void
.end method

.method public a(Lhkl;)V
    .locals 1

    .prologue
    .line 565
    iget-object v0, p0, Lcja;->a:Lciu;

    invoke-virtual {p1, v0}, Lhkl;->a(Lhkn;)V

    .line 566
    return-void
.end method

.method public a(Z)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 570
    const-string v0, "Babel_calls"

    const-string v1, "onFocused for %s"

    new-array v2, v5, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcja;->a:Lciu;

    invoke-virtual {v4}, Lciu;->l()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lezi;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 571
    iget-object v0, p0, Lcja;->a:Lciu;

    .line 1049
    iput-boolean v5, v0, Lciu;->k:Z

    .line 572
    iget-object v0, p0, Lcja;->a:Lciu;

    .line 2049
    iput-boolean p1, v0, Lciu;->l:Z

    .line 573
    iget-object v0, p0, Lcja;->a:Lciu;

    iget-object v0, v0, Lciu;->e:Lcom/google/android/apps/hangouts/hangout/ParticipantTrayView;

    invoke-virtual {v0}, Lcom/google/android/apps/hangouts/hangout/ParticipantTrayView;->g()V

    .line 574
    iget-object v0, p0, Lcja;->a:Lciu;

    iget-object v0, v0, Lciu;->f:Lcom/google/android/apps/hangouts/hangout/FocusedParticipantView;

    iget-object v1, p0, Lcja;->a:Lciu;

    iget-object v1, v1, Lciu;->a:Lhkx;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/hangouts/hangout/FocusedParticipantView;->a(Lhkx;)V

    .line 575
    iget-object v0, p0, Lcja;->a:Lciu;

    invoke-virtual {v0}, Lciu;->i()V

    .line 576
    return-void
.end method
