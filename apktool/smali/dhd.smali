.class final Ldhd;
.super Ldgz;
.source "SourceFile"


# instance fields
.field final a:Landroid/content/SharedPreferences;

.field final synthetic b:Ldfq;

.field private final c:Z


# direct methods
.method public constructor <init>(Ldfq;Landroid/content/SharedPreferences;)V
    .locals 2

    .prologue
    .line 504
    iput-object p1, p0, Ldhd;->b:Ldfq;

    .line 505
    const-string v0, "Use desktop to debug all my backend requests"

    invoke-direct {p0, v0}, Ldgz;-><init>(Ljava/lang/String;)V

    .line 506
    iput-object p2, p0, Ldhd;->a:Landroid/content/SharedPreferences;

    .line 507
    const-string v0, "use_staging_servers"

    const/4 v1, 0x0

    invoke-interface {p2, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Ldhd;->c:Z

    .line 508
    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    .prologue
    .line 512
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Ldhd;->b:Ldfq;

    .line 1055
    iget-object v1, v1, Ldfq;->a:Landroid/content/Context;

    .line 512
    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 513
    iget-boolean v1, p0, Ldhd;->c:Z

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x16

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Current setting: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 514
    const-string v1, "Enabling this mode makes the app talk to staging servers where all requests can be logged using xsds.<br/><b>A restart of the app might be required.</b><br/>\n\nAfter enabling this: Visit xsds.corp.google.com and click \'Unlock\'"

    .line 515
    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    .line 514
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 520
    const-string v1, "Enable it!"

    new-instance v2, Ldhe;

    invoke-direct {v2, p0}, Ldhe;-><init>(Ldhd;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 542
    const-string v1, "Disable it!"

    new-instance v2, Ldhf;

    invoke-direct {v2, p0}, Ldhf;-><init>(Ldhd;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 559
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 560
    return-void
.end method
