.class final Lban;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# instance fields
.field final synthetic a:Lbah;


# direct methods
.method constructor <init>(Lbah;)V
    .locals 0

    .prologue
    .line 328
    iput-object p1, p0, Lban;->a:Lbah;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 331
    iget-object v0, p0, Lban;->a:Lbah;

    .line 1047
    iget-object v0, v0, Lbah;->g:Landroid/app/ProgressDialog;

    .line 331
    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 332
    const-string v0, "set_callerid_result"

    const/4 v1, -0x1

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 333
    if-eqz v0, :cond_0

    .line 335
    sget v0, Laal;->iA:I

    .line 336
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 335
    invoke-static {p1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 337
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 342
    :goto_0
    invoke-static {p1}, Lfi;->a(Landroid/content/Context;)Lfi;

    move-result-object v0

    iget-object v1, p0, Lban;->a:Lbah;

    .line 3047
    iget-object v1, v1, Lbah;->f:Landroid/content/BroadcastReceiver;

    .line 342
    invoke-virtual {v0, v1}, Lfi;->a(Landroid/content/BroadcastReceiver;)V

    .line 343
    return-void

    .line 339
    :cond_0
    iget-object v0, p0, Lban;->a:Lbah;

    .line 2047
    iget-object v0, v0, Lbah;->e:Lbaz;

    .line 339
    invoke-virtual {v0, v2}, Lbaz;->a_(Z)V

    goto :goto_0
.end method
