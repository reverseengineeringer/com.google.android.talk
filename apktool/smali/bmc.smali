.class final Lbmc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lbmb;


# direct methods
.method constructor <init>(Lbmb;)V
    .locals 0

    .prologue
    .line 148
    iput-object p1, p0, Lbmc;->a:Lbmb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 151
    new-instance v1, Landroid/content/Intent;

    const-string v0, "android.intent.action.VIEW"

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 152
    const-string v0, "text/plain"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 153
    const-string v0, "com.google.android.gm"

    const-string v2, "com.google.android.gm.ComposeActivityGmail"

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 156
    const-string v2, "android.intent.extra.SUBJECT"

    const-string v3, "conversation "

    iget-object v0, p0, Lbmc;->a:Lbmb;

    iget-object v0, v0, Lbmb;->a:Lblw;

    .line 1052
    iget-object v0, v0, Lblw;->c:Lbjb;

    .line 157
    iget-object v0, v0, Lbjb;->a:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 159
    const-string v0, "android.intent.extra.TEXT"

    iget-object v2, p0, Lbmc;->a:Lbmb;

    iget-object v2, v2, Lbmb;->a:Lblw;

    .line 2052
    iget-object v2, v2, Lblw;->b:Lbfd;

    .line 160
    iget-object v3, p0, Lbmc;->a:Lbmb;

    iget-object v3, v3, Lbmb;->a:Lblw;

    .line 3052
    iget-object v3, v3, Lblw;->c:Lbjb;

    .line 161
    iget-object v3, v3, Lbjb;->a:Ljava/lang/String;

    .line 160
    invoke-static {v2, v3}, Lcom/google/android/apps/hangouts/phone/DebugActivity;->a(Lbfd;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 159
    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 162
    iget-object v0, p0, Lbmc;->a:Lbmb;

    iget-object v0, v0, Lbmb;->a:Lblw;

    .line 4052
    iget-object v0, v0, Lblw;->a:Landroid/content/Context;

    .line 162
    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 163
    return-void

    .line 157
    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method
