.class final Ldgx;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lefh;

.field final synthetic b:Ldgu;


# direct methods
.method constructor <init>(Ldgu;Lefh;)V
    .locals 0

    .prologue
    .line 616
    iput-object p1, p0, Ldgx;->b:Ldgu;

    iput-object p2, p0, Ldgx;->a:Lefh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .prologue
    .line 619
    iget-object v0, p0, Ldgx;->b:Ldgu;

    .line 1563
    iget-object v0, v0, Ldgu;->a:Landroid/content/SharedPreferences;

    .line 619
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 620
    iget-object v1, p0, Ldgx;->a:Lefh;

    iget-object v1, v1, Lefh;->f:Ljava/lang/String;

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 621
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 622
    iget-object v0, p0, Ldgx;->b:Ldgu;

    iget-object v0, v0, Ldgu;->b:Ldfq;

    .line 2055
    iget-object v0, v0, Ldfq;->a:Landroid/content/Context;

    .line 623
    const-string v1, "You may need to restart the app for changes to take effect"

    const/4 v2, 0x0

    .line 622
    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 626
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 627
    return-void
.end method
