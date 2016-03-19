.class public final Lfyr;
.super Ljava/lang/Object;


# instance fields
.field public final a:Landroid/app/Activity;

.field final b:Lfic;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 2

    new-instance v0, Lfid;

    invoke-direct {v0, p1}, Lfid;-><init>(Landroid/content/Context;)V

    sget-object v1, Lfzj;->c:Lfhw;

    invoke-virtual {v0, v1}, Lfid;->a(Lfhw;)Lfid;

    move-result-object v0

    invoke-virtual {v0}, Lfid;->b()Lfic;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lfyr;-><init>(Landroid/app/Activity;Lfic;)V

    return-void
.end method

.method private constructor <init>(Landroid/app/Activity;Lfic;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lfyr;->a:Landroid/app/Activity;

    iput-object p2, p0, Lfyr;->b:Lfic;

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Intent;)V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 1000
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v2, "com.google.android.gms.googlehelp.HELP"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "EXTRA_GOOGLE_HELP"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The intent you are trying to launch is not GoogleHelp intent! This class only supports GoogleHelp intents."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2000
    :cond_1
    iget-object v0, p0, Lfyr;->a:Landroid/app/Activity;

    invoke-static {v0}, Lfhr;->a(Landroid/content/Context;)I

    move-result v2

    .line 0
    if-nez v2, :cond_2

    .line 3000
    iget-object v0, p0, Lfyr;->b:Lfic;

    new-instance v1, Lfys;

    invoke-direct {v1, p0, p1}, Lfys;-><init>(Lfyr;Landroid/content/Intent;)V

    invoke-static {v0, v1}, Lfzj;->a(Lfic;Lfzn;)V

    .line 4000
    :goto_0
    return-void

    :cond_2
    const-string v0, "EXTRA_GOOGLE_HELP"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/googlehelp/GoogleHelp;

    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/google/android/gms/googlehelp/GoogleHelp;->b()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v3

    const/4 v0, 0x7

    if-eq v2, v0, :cond_4

    .line 5000
    iget-object v0, p0, Lfyr;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, v3, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    const/4 v0, 0x1

    .line 4000
    :goto_1
    if-eqz v0, :cond_4

    iget-object v0, p0, Lfyr;->a:Landroid/app/Activity;

    invoke-virtual {v0, v3}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_3
    move v0, v1

    .line 5000
    goto :goto_1

    .line 4000
    :cond_4
    iget-object v0, p0, Lfyr;->a:Landroid/app/Activity;

    invoke-static {v2, v0}, Lfhr;->a(ILandroid/app/Activity;)Z

    goto :goto_0
.end method
