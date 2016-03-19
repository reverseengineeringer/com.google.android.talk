.class final Lepz;
.super Lbyp;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lbyp",
        "<",
        "Ldpw;",
        "Ldsv;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic d:Lepv;

.field private final e:Landroid/content/Context;

.field private final f:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lepv;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 266
    iput-object p1, p0, Lepz;->d:Lepv;

    invoke-direct {p0}, Lbyp;-><init>()V

    .line 267
    iput-object p2, p0, Lepz;->e:Landroid/content/Context;

    .line 268
    iput-object p3, p0, Lepz;->f:Ljava/lang/String;

    .line 269
    return-void
.end method

.method private k()V
    .locals 3

    .prologue
    .line 309
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lepz;->e:Landroid/content/Context;

    const-class v2, Lcom/google/android/apps/hangouts/requestwriter/RequestWriter;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 310
    const-string v1, "cancel_class"

    invoke-virtual {p0}, Lepz;->e()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 311
    const-string v1, "cancel_request"

    iget-object v2, p0, Lepz;->f:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 312
    iget-object v1, p0, Lepz;->e:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 313
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 2

    .prologue
    .line 288
    iget-object v0, p0, Lepz;->e:Landroid/content/Context;

    sget v1, Lcom/google/android/apps/hangouts/hangout/StressMode;->st:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public b()I
    .locals 4

    .prologue
    .line 273
    iget-object v0, p0, Lepz;->d:Lepv;

    .line 4062
    iget-object v0, v0, Lepv;->c:Lbfd;

    .line 273
    iget-object v1, p0, Lepz;->f:Ljava/lang/String;

    .line 4674
    invoke-static {}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->b()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4675
    invoke-static {}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->d()Lbcm;

    move-result-object v2

    new-instance v3, Lecu;

    invoke-direct {v3, v0, v1}, Lecu;-><init>(Lbfd;Ljava/lang/String;)V

    .line 4676
    invoke-interface {v2, v3}, Lbcm;->a(Lbcn;)Lbcg;

    move-result-object v0

    .line 4677
    invoke-virtual {v0}, Lbcg;->a()I

    move-result v0

    :goto_0
    return v0

    .line 4679
    :cond_0
    invoke-virtual {v0}, Lbfd;->g()I

    move-result v0

    const/16 v2, 0xc0

    invoke-static {v0, v2}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->a(II)Landroid/content/Intent;

    move-result-object v0

    .line 4680
    const-string v2, "status_message"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 6037
    sget-object v1, Lkmm;->a:Lkmm;

    .line 5092
    invoke-static {v0, v1}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->b(Landroid/content/Intent;Lknq;)I

    move-result v0

    goto :goto_0
.end method

.method public c()V
    .locals 3

    .prologue
    .line 304
    invoke-direct {p0}, Lepz;->k()V

    .line 305
    iget-object v0, p0, Lepz;->e:Landroid/content/Context;

    sget v1, Lcom/google/android/apps/hangouts/hangout/StressMode;->ke:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 306
    return-void
.end method

.method public d()V
    .locals 5

    .prologue
    .line 317
    iget-object v0, p0, Lepz;->d:Lepv;

    .line 6062
    iget-object v0, v0, Lepv;->d:Ldll;

    .line 317
    iget-object v1, p0, Lepz;->d:Lepv;

    .line 7062
    iget-object v1, v1, Lepv;->c:Lbfd;

    .line 317
    invoke-virtual {v1}, Lbfd;->g()I

    move-result v1

    iget-object v2, p0, Lepz;->d:Lepv;

    .line 8062
    iget-object v2, v2, Lepv;->c:Lbfd;

    .line 317
    invoke-virtual {v2}, Lbfd;->b()Lczb;

    move-result-object v2

    iget-object v2, v2, Lczb;->a:Ljava/lang/String;

    sget-object v3, Ldnv;->c:Ldnv;

    iget-object v4, p0, Lepz;->f:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3, v4}, Ldll;->a(ILjava/lang/String;Ldnv;Ljava/lang/Object;)V

    .line 319
    iget-object v1, p0, Lepz;->d:Lepv;

    .line 9195
    iget-object v0, v1, Lepv;->a:Landroid/content/Context;

    const-string v2, "input_method"

    .line 9196
    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 9197
    iget-object v2, v1, Lepv;->e:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 9198
    iget-object v0, v1, Lepv;->b:Lcom/google/android/apps/hangouts/statusmessage/impl/StatusMessageSettingsFragment;

    invoke-virtual {v0}, Lcom/google/android/apps/hangouts/statusmessage/impl/StatusMessageSettingsFragment;->getActivity()Lba;

    move-result-object v0

    invoke-virtual {v0}, Lba;->finish()V

    .line 320
    return-void
.end method

.method public e()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<",
            "Ldpw;",
            ">;"
        }
    .end annotation

    .prologue
    .line 278
    const-class v0, Ldpw;

    return-object v0
.end method

.method public f()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<",
            "Ldsv;",
            ">;"
        }
    .end annotation

    .prologue
    .line 283
    const-class v0, Ldsv;

    return-object v0
.end method

.method public h()V
    .locals 0

    .prologue
    .line 298
    invoke-direct {p0}, Lepz;->k()V

    .line 299
    invoke-super {p0}, Lbyp;->h()V

    .line 300
    return-void
.end method

.method protected i()I
    .locals 4

    .prologue
    .line 293
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x3

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method
