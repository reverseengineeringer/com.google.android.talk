.class final Lcpb;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:I

.field final synthetic c:Lcpa;


# direct methods
.method constructor <init>(Lcpa;II)V
    .locals 0

    .prologue
    .line 578
    iput-object p1, p0, Lcpb;->c:Lcpa;

    iput p2, p0, Lcpb;->a:I

    iput p3, p0, Lcpb;->b:I

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .prologue
    .line 4581
    new-instance v0, Lbfz;

    iget-object v1, p0, Lcpb;->c:Lcpa;

    .line 5047
    iget-object v1, v1, Lcpa;->k:Landroid/content/Context;

    .line 4582
    iget v2, p0, Lcpb;->a:I

    invoke-direct {v0, v1, v2}, Lbfz;-><init>(Landroid/content/Context;I)V

    .line 4583
    invoke-virtual {v0}, Lbfz;->z()V

    .line 4584
    const/4 v0, 0x0

    .line 578
    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 2047
    sget v0, Lcpa;->j:I

    .line 1591
    iget v1, p0, Lcpb;->b:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcpb;->c:Lcpa;

    .line 3047
    iget-object v0, v0, Lcpa;->l:Lcom/google/android/apps/hangouts/invites/conversationinvitelist/impl/InviteListFragment;

    .line 1591
    invoke-virtual {v0}, Lcom/google/android/apps/hangouts/invites/conversationinvitelist/impl/InviteListFragment;->getActivity()Lba;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1592
    iget-object v0, p0, Lcpb;->c:Lcpa;

    iput-boolean v3, v0, Lcpa;->q:Z

    .line 1593
    iget-object v0, p0, Lcpb;->c:Lcpa;

    .line 4047
    iget-object v0, v0, Lcpa;->l:Lcom/google/android/apps/hangouts/invites/conversationinvitelist/impl/InviteListFragment;

    .line 1594
    invoke-virtual {v0}, Lcom/google/android/apps/hangouts/invites/conversationinvitelist/impl/InviteListFragment;->getLoaderManager()Lcj;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcpb;->c:Lcpa;

    .line 1595
    invoke-virtual {v0, v3, v1, v2}, Lcj;->b(ILandroid/os/Bundle;Lck;)Lfe;

    .line 1596
    iget-object v0, p0, Lcpb;->c:Lcpa;

    invoke-virtual {v0}, Lcpa;->notifyDataSetChanged()V

    .line 1601
    iget-object v0, p0, Lcpb;->c:Lcpa;

    invoke-virtual {v0}, Lcpa;->m()Z

    .line 578
    :cond_0
    return-void
.end method
