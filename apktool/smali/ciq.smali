.class public final Lciq;
.super Lhku;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/android/apps/hangouts/hangout/ParticipantTrayView;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/hangouts/hangout/ParticipantTrayView;)V
    .locals 1

    .prologue
    .line 38
    iput-object p1, p0, Lciq;->a:Lcom/google/android/apps/hangouts/hangout/ParticipantTrayView;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lhku;-><init>(B)V

    return-void
.end method


# virtual methods
.method public a(Lhkx;)V
    .locals 1

    .prologue
    .line 48
    invoke-virtual {p1}, Lhkx;->g()Z

    move-result v0

    if-nez v0, :cond_0

    .line 49
    iget-object v0, p0, Lciq;->a:Lcom/google/android/apps/hangouts/hangout/ParticipantTrayView;

    .line 2035
    invoke-virtual {v0, p1}, Lcom/google/android/apps/hangouts/hangout/ParticipantTrayView;->a(Lhkx;)V

    .line 51
    :cond_0
    return-void
.end method

.method public a(Z)V
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lciq;->a:Lcom/google/android/apps/hangouts/hangout/ParticipantTrayView;

    invoke-virtual {v0}, Lcom/google/android/apps/hangouts/hangout/ParticipantTrayView;->c()V

    .line 43
    iget-object v0, p0, Lciq;->a:Lcom/google/android/apps/hangouts/hangout/ParticipantTrayView;

    .line 1035
    invoke-virtual {v0}, Lcom/google/android/apps/hangouts/hangout/ParticipantTrayView;->h()V

    .line 44
    return-void
.end method
