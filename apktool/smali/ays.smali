.class final Lays;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:I

.field final synthetic b:Layq;


# direct methods
.method constructor <init>(Layq;I)V
    .locals 0

    .prologue
    .line 109
    iput-object p1, p0, Lays;->b:Layq;

    iput p2, p0, Lays;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    .prologue
    .line 112
    new-instance v1, Landroid/content/Intent;

    const-string v0, "android.intent.action.VIEW"

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 113
    iget-object v0, p0, Lays;->b:Layq;

    .line 1035
    iget-object v0, v0, Layq;->a:Landroid/app/Activity;

    .line 113
    iget v2, p0, Lays;->a:I

    .line 1047
    const-class v3, Lhpz;

    invoke-static {v0, v3}, Lilh;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhpz;

    .line 1048
    invoke-interface {v0, v2}, Lhpz;->a(I)Lhqb;

    move-result-object v0

    const-string v2, "app_upgrade_url"

    const-string v3, ""

    .line 1049
    invoke-interface {v0, v2, v3}, Lhqb;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 113
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 114
    iget-object v0, p0, Lays;->b:Layq;

    .line 2035
    iget-object v0, v0, Layq;->a:Landroid/app/Activity;

    .line 114
    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 115
    iget-object v0, p0, Lays;->b:Layq;

    .line 3035
    iget-object v0, v0, Layq;->a:Landroid/app/Activity;

    .line 115
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 116
    return-void
.end method
