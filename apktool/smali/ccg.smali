.class public final Lccg;
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
.field final a:Ljava/lang/String;

.field final synthetic b:Lcom/google/android/apps/hangouts/fragments/InvitationFragment;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/hangouts/fragments/InvitationFragment;)V
    .locals 1

    .prologue
    .line 363
    iput-object p1, p0, Lccg;->b:Lcom/google/android/apps/hangouts/fragments/InvitationFragment;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 364
    iget-object v0, p0, Lccg;->b:Lcom/google/android/apps/hangouts/fragments/InvitationFragment;

    .line 1071
    iget-object v0, v0, Lcom/google/android/apps/hangouts/fragments/InvitationFragment;->c:Ljava/lang/String;

    .line 364
    iput-object v0, p0, Lccg;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .prologue
    .line 5381
    new-instance v0, Lbfz;

    iget-object v1, p0, Lccg;->b:Lcom/google/android/apps/hangouts/fragments/InvitationFragment;

    .line 6071
    iget-object v1, v1, Lcom/google/android/apps/hangouts/fragments/InvitationFragment;->context:Lill;

    .line 5382
    iget-object v2, p0, Lccg;->b:Lcom/google/android/apps/hangouts/fragments/InvitationFragment;

    .line 7071
    iget-object v2, v2, Lcom/google/android/apps/hangouts/fragments/InvitationFragment;->f:Lbfd;

    .line 5382
    invoke-virtual {v2}, Lbfd;->g()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lbfz;-><init>(Landroid/content/Context;I)V

    .line 5383
    iget-object v1, p0, Lccg;->b:Lcom/google/android/apps/hangouts/fragments/InvitationFragment;

    .line 8071
    iget-object v1, v1, Lcom/google/android/apps/hangouts/fragments/InvitationFragment;->c:Ljava/lang/String;

    .line 5383
    invoke-virtual {v0, v1}, Lbfz;->B(Ljava/lang/String;)V

    .line 5384
    iget-object v1, p0, Lccg;->b:Lcom/google/android/apps/hangouts/fragments/InvitationFragment;

    .line 9071
    iget-object v1, v1, Lcom/google/android/apps/hangouts/fragments/InvitationFragment;->c:Ljava/lang/String;

    .line 5384
    invoke-virtual {v0, v1}, Lbfz;->i(Ljava/lang/String;)V

    .line 5386
    const/4 v0, 0x0

    .line 363
    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 363
    check-cast p1, Ljava/lang/Void;

    .line 1368
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 1369
    iget-object v0, p0, Lccg;->b:Lcom/google/android/apps/hangouts/fragments/InvitationFragment;

    .line 2071
    iget-object v0, v0, Lcom/google/android/apps/hangouts/fragments/InvitationFragment;->aj:Lbzw;

    .line 1369
    if-eqz v0, :cond_0

    iget-object v0, p0, Lccg;->b:Lcom/google/android/apps/hangouts/fragments/InvitationFragment;

    .line 3071
    iget-object v0, v0, Lcom/google/android/apps/hangouts/fragments/InvitationFragment;->c:Ljava/lang/String;

    .line 1370
    iget-object v1, p0, Lccg;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1371
    new-instance v0, Laxj;

    iget-object v1, p0, Lccg;->b:Lcom/google/android/apps/hangouts/fragments/InvitationFragment;

    .line 4071
    iget-object v1, v1, Lcom/google/android/apps/hangouts/fragments/InvitationFragment;->c:Ljava/lang/String;

    .line 1373
    iget-object v2, p0, Lccg;->b:Lcom/google/android/apps/hangouts/fragments/InvitationFragment;

    .line 5071
    iget v2, v2, Lcom/google/android/apps/hangouts/fragments/InvitationFragment;->g:I

    .line 1374
    invoke-direct {v0, v1, v2}, Laxj;-><init>(Ljava/lang/String;I)V

    .line 1375
    iget-object v1, p0, Lccg;->b:Lcom/google/android/apps/hangouts/fragments/InvitationFragment;

    invoke-virtual {v1, v0}, Lcom/google/android/apps/hangouts/fragments/InvitationFragment;->restartFragment(Laxj;)V

    .line 363
    :cond_0
    return-void
.end method
