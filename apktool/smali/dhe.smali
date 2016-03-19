.class final Ldhe;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Ldhd;


# direct methods
.method constructor <init>(Ldhd;)V
    .locals 0

    .prologue
    .line 522
    iput-object p1, p0, Ldhe;->a:Ldhd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .prologue
    .line 525
    iget-object v0, p0, Ldhe;->a:Ldhd;

    .line 1500
    iget-object v0, v0, Ldhd;->a:Landroid/content/SharedPreferences;

    .line 525
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 527
    sget-object v1, Lefh;->a:Lefh;

    iget-object v1, v1, Lefh;->f:Ljava/lang/String;

    const-string v2, "https://staging-www.sandbox.googleapis.com/chat/v1/"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 530
    sget-object v1, Lefh;->c:Lefh;

    iget-object v1, v1, Lefh;->f:Ljava/lang/String;

    const-string v2, "https://staging-www.sandbox.googleapis.com/hangouts/v1_preprod/"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 533
    const-string v1, "use_staging_servers"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 534
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 535
    iget-object v0, p0, Ldhe;->a:Ldhd;

    iget-object v0, v0, Ldhd;->b:Ldfq;

    .line 2055
    iget-object v0, v0, Ldfq;->a:Landroid/content/Context;

    .line 536
    const-string v1, "You may need to restart the app for changes to take effect"

    const/4 v2, 0x0

    .line 535
    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 539
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 540
    return-void
.end method
