.class final Lcjl;
.super Lciy;
.source "SourceFile"


# instance fields
.field final synthetic b:Lcjk;


# direct methods
.method constructor <init>(Lcjk;)V
    .locals 0

    .prologue
    .line 27
    iput-object p1, p0, Lcjl;->b:Lcjk;

    invoke-direct {p0, p1}, Lciy;-><init>(Lciu;)V

    return-void
.end method


# virtual methods
.method public b(Lhkx;)V
    .locals 2

    .prologue
    .line 37
    iget-object v0, p0, Lcjl;->b:Lcjk;

    iget-object v0, v0, Lcjk;->a:Lhkx;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcjl;->b:Lcjk;

    iget-object v0, v0, Lcjk;->a:Lhkx;

    .line 40
    invoke-virtual {v0}, Lhkx;->a()Ljava/lang/String;

    move-result-object v0

    .line 41
    invoke-virtual {p1}, Lhkx;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 42
    iget-object v0, p0, Lcjl;->b:Lcjk;

    invoke-virtual {v0}, Lcjk;->p()V

    .line 44
    :cond_0
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 30
    iget-object v0, p0, Lcjl;->b:Lcjk;

    iget-object v0, v0, Lcjk;->a:Lhkx;

    invoke-virtual {v0}, Lhkx;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Laal;->f(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 31
    iget-object v0, p0, Lcjl;->b:Lcjk;

    .line 2149
    iget-object v1, v0, Lcjk;->a:Lhkx;

    invoke-virtual {v1}, Lhkx;->l()Z

    move-result v1

    .line 3134
    const-string v2, "Expected condition to be true"

    invoke-static {v2, v1}, Lhbs;->a(Ljava/lang/String;Z)V

    .line 1194
    invoke-virtual {v0}, Lcjk;->i()V

    .line 1195
    iget-object v1, v0, Lcjk;->f:Lcom/google/android/apps/hangouts/hangout/FocusedParticipantView;

    iget-object v2, v0, Lcjk;->a:Lhkx;

    invoke-virtual {v2}, Lhkx;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/apps/hangouts/hangout/FocusedParticipantView;->a(Ljava/lang/String;)V

    .line 1198
    iget-object v1, v0, Lcjk;->i:Landroid/widget/ImageButton;

    iget-object v0, v0, Lcjk;->a:Lhkx;

    invoke-virtual {v0}, Lhkx;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 33
    :cond_0
    return-void
.end method
