.class final Lcix;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field final synthetic a:Lciu;


# direct methods
.method constructor <init>(Lciu;)V
    .locals 0

    .prologue
    .line 180
    iput-object p1, p0, Lcix;->a:Lciu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 4

    .prologue
    .line 183
    iget-object v0, p0, Lcix;->a:Lciu;

    iget-object v0, v0, Lciu;->e:Lcom/google/android/apps/hangouts/hangout/ParticipantTrayView;

    iget-object v1, p0, Lcix;->a:Lciu;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/hangouts/hangout/ParticipantTrayView;->a(Landroid/view/View;)V

    .line 184
    iget-object v0, p0, Lcix;->a:Lciu;

    .line 1322
    iget-object v1, v0, Lciu;->a:Lhkx;

    invoke-virtual {v1}, Lhkx;->g()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1323
    iget-object v1, v0, Lciu;->e:Lcom/google/android/apps/hangouts/hangout/ParticipantTrayView;

    invoke-virtual {v1}, Lcom/google/android/apps/hangouts/hangout/ParticipantTrayView;->f()V

    .line 1324
    iget-object v1, v0, Lciu;->j:Lcom/google/android/apps/hangouts/hangout/RemoteParticipantPopupMenu;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/google/android/apps/hangouts/hangout/RemoteParticipantPopupMenu;->setVisibility(I)V

    .line 1325
    iget-object v1, v0, Lciu;->j:Lcom/google/android/apps/hangouts/hangout/RemoteParticipantPopupMenu;

    .line 1326
    invoke-virtual {v0}, Lciu;->getContext()Landroid/content/Context;

    iget-object v2, v0, Lciu;->c:Lcgn;

    iget-object v3, v0, Lciu;->a:Lhkx;

    iget-object v0, v0, Lciu;->b:Lcfc;

    invoke-virtual {v0}, Lcfc;->r()Lcgw;

    move-result-object v0

    .line 1325
    invoke-virtual {v1, v2, v3, v0}, Lcom/google/android/apps/hangouts/hangout/RemoteParticipantPopupMenu;->a(Lcgn;Lhkx;Lcgw;)V

    .line 185
    :cond_0
    const/4 v0, 0x1

    return v0
.end method
