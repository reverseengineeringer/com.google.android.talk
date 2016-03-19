.class final Lbar;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# instance fields
.field final synthetic a:Lbap;


# direct methods
.method constructor <init>(Lbap;)V
    .locals 0

    .prologue
    .line 185
    iput-object p1, p0, Lbar;->a:Lbap;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 189
    iget-object v0, p0, Lbar;->a:Lbap;

    .line 1040
    iget-object v0, v0, Lbap;->e:Landroid/widget/ProgressBar;

    .line 189
    invoke-virtual {v0, v5}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 190
    const-string v0, "set_callerid_result"

    const/4 v1, -0x1

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 191
    if-nez v0, :cond_0

    .line 192
    iget-object v0, p0, Lbar;->a:Lbap;

    .line 2040
    iget-object v0, v0, Lbap;->i:Lbba;

    .line 192
    const/16 v1, 0x8d0

    invoke-virtual {v0, v1}, Lbba;->a(I)V

    .line 193
    iget-object v0, p0, Lbar;->a:Lbap;

    .line 3040
    iget-object v0, v0, Lbap;->f:Landroid/widget/TextView;

    .line 193
    sget v1, Laal;->iO:I

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 194
    iget-object v0, p0, Lbar;->a:Lbap;

    .line 4040
    iget-object v0, v0, Lbap;->g:Landroid/widget/TextView;

    .line 194
    sget v1, Laal;->iM:I

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lbar;->a:Lbap;

    .line 5040
    iget-object v3, v3, Lbap;->d:Ljava/lang/String;

    .line 195
    invoke-static {v3}, Lezm;->o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    .line 194
    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 196
    iget-object v0, p0, Lbar;->a:Lbap;

    .line 6040
    iget-object v0, v0, Lbap;->b:Landroid/widget/Button;

    .line 196
    invoke-virtual {v0, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 198
    iget-object v0, p0, Lbar;->a:Lbap;

    .line 7040
    iget-object v0, v0, Lbap;->a:Landroid/widget/Button;

    .line 198
    sget v1, Laal;->iJ:I

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 199
    iget-object v0, p0, Lbar;->a:Lbap;

    .line 8040
    iget-object v0, v0, Lbap;->a:Landroid/widget/Button;

    .line 199
    new-instance v1, Lbas;

    invoke-direct {v1, p0}, Lbas;-><init>(Lbar;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 206
    iget-object v0, p0, Lbar;->a:Lbap;

    .line 9040
    iget-object v0, v0, Lbap;->f:Landroid/widget/TextView;

    .line 206
    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->sendAccessibilityEvent(I)V

    .line 217
    :goto_0
    return-void

    .line 210
    :cond_0
    sget v0, Laal;->iI:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 211
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 213
    iget-object v0, p0, Lbar;->a:Lbap;

    .line 10040
    iget-object v0, v0, Lbap;->b:Landroid/widget/Button;

    .line 213
    sget v1, Laal;->iK:I

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 215
    iget-object v0, p0, Lbar;->a:Lbap;

    .line 11040
    iget-object v0, v0, Lbap;->a:Landroid/widget/Button;

    .line 215
    sget v1, Laal;->iG:I

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
