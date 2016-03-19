.class public final Lcfz;
.super Lhku;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/android/apps/hangouts/hangout/FocusedParticipantView;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/hangouts/hangout/FocusedParticipantView;)V
    .locals 1

    .prologue
    .line 39
    iput-object p1, p0, Lcfz;->a:Lcom/google/android/apps/hangouts/hangout/FocusedParticipantView;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lhku;-><init>(B)V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;)V
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcfz;->a:Lcom/google/android/apps/hangouts/hangout/FocusedParticipantView;

    .line 5035
    iget-object v0, v0, Lcom/google/android/apps/hangouts/hangout/FocusedParticipantView;->d:Lcnn;

    .line 53
    if-eqz v0, :cond_0

    iget-object v0, p0, Lcfz;->a:Lcom/google/android/apps/hangouts/hangout/FocusedParticipantView;

    .line 6035
    iget-object v0, v0, Lcom/google/android/apps/hangouts/hangout/FocusedParticipantView;->c:Lhkx;

    .line 54
    if-eqz v0, :cond_0

    iget-object v0, p0, Lcfz;->a:Lcom/google/android/apps/hangouts/hangout/FocusedParticipantView;

    .line 7035
    iget-object v0, v0, Lcom/google/android/apps/hangouts/hangout/FocusedParticipantView;->c:Lhkx;

    .line 55
    invoke-virtual {v0}, Lhkx;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 56
    iget-object v0, p0, Lcfz;->a:Lcom/google/android/apps/hangouts/hangout/FocusedParticipantView;

    .line 8035
    iget-object v0, v0, Lcom/google/android/apps/hangouts/hangout/FocusedParticipantView;->d:Lcnn;

    .line 56
    invoke-interface {v0, p1}, Lcnn;->a(I)V

    .line 58
    :cond_0
    return-void
.end method

.method public a(Z)V
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcfz;->a:Lcom/google/android/apps/hangouts/hangout/FocusedParticipantView;

    .line 9035
    invoke-virtual {v0}, Lcom/google/android/apps/hangouts/hangout/FocusedParticipantView;->c()V

    .line 63
    return-void
.end method

.method public c(Lhkx;)V
    .locals 2

    .prologue
    .line 42
    iget-object v0, p0, Lcfz;->a:Lcom/google/android/apps/hangouts/hangout/FocusedParticipantView;

    .line 1035
    iget-object v0, v0, Lcom/google/android/apps/hangouts/hangout/FocusedParticipantView;->c:Lhkx;

    .line 42
    if-eqz v0, :cond_0

    iget-object v0, p0, Lcfz;->a:Lcom/google/android/apps/hangouts/hangout/FocusedParticipantView;

    .line 2035
    iget-object v0, v0, Lcom/google/android/apps/hangouts/hangout/FocusedParticipantView;->c:Lhkx;

    .line 44
    invoke-virtual {v0}, Lhkx;->a()Ljava/lang/String;

    move-result-object v0

    .line 45
    invoke-virtual {p1}, Lhkx;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 46
    iget-object v0, p0, Lcfz;->a:Lcom/google/android/apps/hangouts/hangout/FocusedParticipantView;

    .line 3035
    iput-object p1, v0, Lcom/google/android/apps/hangouts/hangout/FocusedParticipantView;->c:Lhkx;

    .line 47
    iget-object v0, p0, Lcfz;->a:Lcom/google/android/apps/hangouts/hangout/FocusedParticipantView;

    .line 4035
    invoke-virtual {v0}, Lcom/google/android/apps/hangouts/hangout/FocusedParticipantView;->b()V

    .line 49
    :cond_0
    return-void
.end method
