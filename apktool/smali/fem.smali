.class final Lfem;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lbfd;

.field final synthetic b:Lav;

.field final synthetic c:Lfel;


# direct methods
.method constructor <init>(Lfel;Lbfd;Lav;)V
    .locals 0

    .prologue
    .line 37
    iput-object p1, p0, Lfem;->c:Lfel;

    iput-object p2, p0, Lfem;->a:Lbfd;

    iput-object p3, p0, Lfem;->b:Lav;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    .prologue
    .line 40
    iget-object v0, p0, Lfem;->a:Lbfd;

    iget-object v1, p0, Lfem;->c:Lfel;

    .line 1067
    iget-object v1, v1, Lfel;->a:Ljava/lang/String;

    .line 1947
    new-instance v2, Landroid/content/Intent;

    .line 2036
    sget-object v3, Laal;->oJ:Landroid/content/Context;

    .line 1947
    const-class v4, Lcom/google/android/apps/hangouts/phone/ViewVCardActivity;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1948
    if-eqz v0, :cond_0

    .line 1949
    const-string v3, "account_id"

    invoke-virtual {v0}, Lbfd;->g()I

    move-result v0

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1951
    :cond_0
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 41
    iget-object v0, p0, Lfem;->b:Lav;

    invoke-virtual {v0, v2}, Lav;->startActivity(Landroid/content/Intent;)V

    .line 42
    return-void
.end method
