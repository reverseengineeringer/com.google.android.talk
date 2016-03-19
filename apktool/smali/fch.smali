.class public final Lfch;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lcom/google/android/apps/hangouts/fragments/ConversationParticipantsFragment;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/hangouts/fragments/ConversationParticipantsFragment;)V
    .locals 0

    .prologue
    .line 4688
    iput-object p1, p0, Lfch;->a:Lcom/google/android/apps/hangouts/fragments/ConversationParticipantsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lfce;)V
    .locals 4

    .prologue
    .line 1691
    iget-object v0, p0, Lfch;->a:Lcom/google/android/apps/hangouts/fragments/ConversationParticipantsFragment;

    .line 2068
    iget-object v0, v0, Lcom/google/android/apps/hangouts/fragments/ConversationParticipantsFragment;->binder:Lilh;

    .line 1691
    const-class v1, Lemf;

    invoke-virtual {v0, v1}, Lilh;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lemf;

    .line 1692
    iget-object v1, p0, Lfch;->a:Lcom/google/android/apps/hangouts/fragments/ConversationParticipantsFragment;

    .line 3068
    iget-object v1, v1, Lcom/google/android/apps/hangouts/fragments/ConversationParticipantsFragment;->context:Lill;

    .line 1693
    iget-object v2, p0, Lfch;->a:Lcom/google/android/apps/hangouts/fragments/ConversationParticipantsFragment;

    invoke-virtual {p1}, Lfce;->a()Lbdy;

    move-result-object v3

    .line 1692
    invoke-interface {v0, v1, v2, v3}, Lemf;->a(Landroid/content/Context;Lav;Lbdy;)V

    .line 1694
    iget-object v0, p0, Lfch;->a:Lcom/google/android/apps/hangouts/fragments/ConversationParticipantsFragment;

    .line 4068
    iget-object v0, v0, Lcom/google/android/apps/hangouts/fragments/ConversationParticipantsFragment;->b:Lbfd;

    .line 1695
    const/16 v1, 0xacf

    .line 1694
    invoke-static {v0, v1}, Laal;->a(Lbfd;I)V

    .line 1696
    return-void
.end method
