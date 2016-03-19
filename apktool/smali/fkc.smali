.class public final Lfkc;
.super Lav;

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;
.implements Lck;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lav;",
        "Landroid/content/DialogInterface$OnCancelListener;",
        "Lck",
        "<",
        "Lcom/google/android/gms/common/ConnectionResult;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Z

.field private b:I

.field private c:Lcom/google/android/gms/common/ConnectionResult;

.field private final d:Landroid/os/Handler;

.field private final e:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lfke;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lav;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lfkc;->b:I

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lfkc;->d:Landroid/os/Handler;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lfkc;->e:Landroid/util/SparseArray;

    return-void
.end method

.method public static a(Lba;)Lfkc;
    .locals 4

    const-string v0, "Must be called from main thread of process"

    invoke-static {v0}, Laal;->w(Ljava/lang/String;)V

    invoke-virtual {p0}, Lba;->C_()Lbg;

    move-result-object v1

    :try_start_0
    const-string v0, "GmsSupportLoaderLifecycleFragment"

    invoke-virtual {v1, v0}, Lbg;->a(Ljava/lang/String;)Lav;

    move-result-object v0

    check-cast v0, Lfkc;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lfkc;->isRemoving()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    new-instance v0, Lfkc;

    invoke-direct {v0}, Lfkc;-><init>()V

    invoke-virtual {v1}, Lbg;->a()Lbz;

    move-result-object v2

    const-string v3, "GmsSupportLoaderLifecycleFragment"

    invoke-virtual {v2, v0, v3}, Lbz;->a(Lav;Ljava/lang/String;)Lbz;

    move-result-object v2

    invoke-virtual {v2}, Lbz;->b()I

    invoke-virtual {v1}, Lbg;->b()Z

    :cond_1
    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Fragment with tag GmsSupportLoaderLifecycleFragment is not a SupportLoaderLifecycleFragment"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private a()V
    .locals 5

    const/4 v4, 0x0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lfkc;->a:Z

    const/4 v1, -0x1

    iput v1, p0, Lfkc;->b:I

    iput-object v4, p0, Lfkc;->c:Lcom/google/android/gms/common/ConnectionResult;

    invoke-virtual {p0}, Lfkc;->getLoaderManager()Lcj;

    move-result-object v1

    :goto_0
    iget-object v2, p0, Lfkc;->e:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lfkc;->e:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    invoke-direct {p0, v2}, Lfkc;->b(I)Lfkd;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lfkd;->c()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v1, v2}, Lcj;->a(I)V

    invoke-virtual {v1, v2, v4, p0}, Lcj;->a(ILandroid/os/Bundle;Lck;)Lfe;

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private a(ILcom/google/android/gms/common/ConnectionResult;)V
    .locals 2

    .prologue
    .line 0
    iget-object v0, p0, Lfkc;->e:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfke;

    if-eqz v0, :cond_0

    .line 2000
    iget-object v1, p0, Lfkc;->e:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    invoke-virtual {p0}, Lfkc;->getLoaderManager()Lcj;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcj;->a(I)V

    .line 0
    iget-object v0, v0, Lfke;->b:Lfih;

    if-eqz v0, :cond_0

    invoke-interface {v0, p2}, Lfih;->a(Lcom/google/android/gms/common/ConnectionResult;)V

    :cond_0
    invoke-direct {p0}, Lfkc;->a()V

    return-void
.end method

.method static synthetic a(Lfkc;)V
    .locals 0

    invoke-direct {p0}, Lfkc;->a()V

    return-void
.end method

.method static synthetic a(Lfkc;ILcom/google/android/gms/common/ConnectionResult;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lfkc;->a(ILcom/google/android/gms/common/ConnectionResult;)V

    return-void
.end method

.method private b(I)Lfkd;
    .locals 3

    :try_start_0
    invoke-virtual {p0}, Lfkc;->getLoaderManager()Lcj;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcj;->b(I)Lfe;

    move-result-object v0

    check-cast v0, Lfkd;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Unknown loader in SupportLoaderLifecycleFragment"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public a(I)Lfic;
    .locals 1

    invoke-virtual {p0}, Lfkc;->getActivity()Lba;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lfkc;->b(I)Lfkd;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lfkd;->a:Lfic;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(ILfic;Lfih;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 0
    const-string v0, "GoogleApiClient instance cannot be null"

    invoke-static {p2, v0}, Laal;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lfkc;->e:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v0

    if-gez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Already managing a GoogleApiClient with id "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Laal;->a(ZLjava/lang/Object;)V

    new-instance v0, Lfke;

    .line 1000
    invoke-direct {v0, p2, p3}, Lfke;-><init>(Lfic;Lfih;)V

    .line 0
    iget-object v2, p0, Lfkc;->e:Landroid/util/SparseArray;

    invoke-virtual {v2, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    invoke-virtual {p0}, Lfkc;->getActivity()Lba;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1177
    sput-boolean v1, Lcl;->a:Z

    .line 0
    invoke-virtual {p0}, Lfkc;->getLoaderManager()Lcj;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, p0}, Lcj;->a(ILandroid/os/Bundle;Lck;)Lfe;

    :cond_0
    return-void

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    :cond_0
    move v0, v1

    :goto_0
    if-eqz v0, :cond_1

    invoke-direct {p0}, Lfkc;->a()V

    :goto_1
    return-void

    :pswitch_0
    invoke-virtual {p0}, Lfkc;->getActivity()Lba;

    move-result-object v2

    invoke-static {v2}, Lfhr;->a(Landroid/content/Context;)I

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :pswitch_1
    const/4 v2, -0x1

    if-ne p2, v2, :cond_0

    goto :goto_0

    :cond_1
    iget v0, p0, Lfkc;->b:I

    iget-object v1, p0, Lfkc;->c:Lcom/google/android/gms/common/ConnectionResult;

    invoke-direct {p0, v0, v1}, Lfkc;->a(ILcom/google/android/gms/common/ConnectionResult;)V

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 5

    const/4 v4, 0x0

    invoke-super {p0, p1}, Lav;->onAttach(Landroid/app/Activity;)V

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lfkc;->e:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    iget-object v0, p0, Lfkc;->e:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    invoke-direct {p0, v2}, Lfkc;->b(I)Lfkd;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v0, p0, Lfkc;->e:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfke;

    iget-object v0, v0, Lfke;->a:Lfic;

    iget-object v3, v3, Lfkd;->a:Lfic;

    if-eq v0, v3, :cond_0

    invoke-virtual {p0}, Lfkc;->getLoaderManager()Lcj;

    move-result-object v0

    invoke-virtual {v0, v2, v4, p0}, Lcj;->b(ILandroid/os/Bundle;Lck;)Lfe;

    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lfkc;->getLoaderManager()Lcj;

    move-result-object v0

    invoke-virtual {v0, v2, v4, p0}, Lcj;->a(ILandroid/os/Bundle;Lck;)Lfe;

    goto :goto_1

    :cond_1
    return-void
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 4

    iget v0, p0, Lfkc;->b:I

    new-instance v1, Lcom/google/android/gms/common/ConnectionResult;

    const/16 v2, 0xd

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/google/android/gms/common/ConnectionResult;-><init>(ILandroid/app/PendingIntent;)V

    invoke-direct {p0, v0, v1}, Lfkc;->a(ILcom/google/android/gms/common/ConnectionResult;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Lav;->onCreate(Landroid/os/Bundle;)V

    if-eqz p1, :cond_0

    const-string v0, "resolving_error"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lfkc;->a:Z

    const-string v0, "failed_client_id"

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lfkc;->b:I

    iget v0, p0, Lfkc;->b:I

    if-ltz v0, :cond_0

    new-instance v1, Lcom/google/android/gms/common/ConnectionResult;

    const-string v0, "failed_status"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    const-string v0, "failed_resolution"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    invoke-direct {v1, v2, v0}, Lcom/google/android/gms/common/ConnectionResult;-><init>(ILandroid/app/PendingIntent;)V

    iput-object v1, p0, Lfkc;->c:Lcom/google/android/gms/common/ConnectionResult;

    :cond_0
    return-void
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Lfe;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Lfe",
            "<",
            "Lcom/google/android/gms/common/ConnectionResult;",
            ">;"
        }
    .end annotation

    new-instance v1, Lfkd;

    invoke-virtual {p0}, Lfkc;->getActivity()Lba;

    move-result-object v2

    iget-object v0, p0, Lfkc;->e:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfke;

    iget-object v0, v0, Lfke;->a:Lfic;

    invoke-direct {v1, v2, v0}, Lfkd;-><init>(Landroid/content/Context;Lfic;)V

    return-object v1
.end method

.method public synthetic onLoadFinished(Lfe;Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 0
    check-cast p2, Lcom/google/android/gms/common/ConnectionResult;

    .line 3000
    invoke-virtual {p2}, Lcom/google/android/gms/common/ConnectionResult;->b()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lfe;->o()I

    move-result v0

    .line 4000
    iget-boolean v1, p0, Lfkc;->a:Z

    if-nez v1, :cond_0

    const/4 v1, 0x1

    iput-boolean v1, p0, Lfkc;->a:Z

    iput v0, p0, Lfkc;->b:I

    iput-object p2, p0, Lfkc;->c:Lcom/google/android/gms/common/ConnectionResult;

    iget-object v1, p0, Lfkc;->d:Landroid/os/Handler;

    new-instance v2, Lfkf;

    invoke-direct {v2, p0, v0, p2}, Lfkf;-><init>(Lfkc;ILcom/google/android/gms/common/ConnectionResult;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 0
    :cond_0
    return-void
.end method

.method public onLoaderReset(Lfe;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lfe",
            "<",
            "Lcom/google/android/gms/common/ConnectionResult;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lav;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v0, "resolving_error"

    iget-boolean v1, p0, Lfkc;->a:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget v0, p0, Lfkc;->b:I

    if-ltz v0, :cond_0

    const-string v0, "failed_client_id"

    iget v1, p0, Lfkc;->b:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "failed_status"

    iget-object v1, p0, Lfkc;->c:Lcom/google/android/gms/common/ConnectionResult;

    invoke-virtual {v1}, Lcom/google/android/gms/common/ConnectionResult;->c()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "failed_resolution"

    iget-object v1, p0, Lfkc;->c:Lcom/google/android/gms/common/ConnectionResult;

    invoke-virtual {v1}, Lcom/google/android/gms/common/ConnectionResult;->d()Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 4

    invoke-super {p0}, Lav;->onStart()V

    iget-boolean v0, p0, Lfkc;->a:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lfkc;->e:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    invoke-virtual {p0}, Lfkc;->getLoaderManager()Lcj;

    move-result-object v1

    iget-object v2, p0, Lfkc;->e:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, p0}, Lcj;->a(ILandroid/os/Bundle;Lck;)Lfe;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
