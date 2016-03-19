.class final Lejm;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lijh;


# instance fields
.field final synthetic a:Lejl;


# direct methods
.method constructor <init>(Lejl;)V
    .locals 0

    .prologue
    .line 88
    iput-object p1, p0, Lejm;->a:Lejl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 5

    .prologue
    .line 91
    iget-object v0, p0, Lejm;->a:Lejl;

    invoke-virtual {v0}, Lejl;->getActivity()Lba;

    move-result-object v0

    iget-object v1, p0, Lejm;->a:Lejl;

    .line 1038
    iget-object v1, v1, Lejl;->b:Lbfd;

    .line 1797
    new-instance v2, Landroid/content/Intent;

    .line 2036
    sget-object v3, Laal;->oJ:Landroid/content/Context;

    .line 1797
    const-class v4, Lcom/google/android/apps/hangouts/phone/HiddenContactsActivity;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1798
    if-eqz v1, :cond_0

    .line 1799
    const-string v3, "account_id"

    invoke-virtual {v1}, Lbfd;->g()I

    move-result v1

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 91
    :cond_0
    invoke-virtual {v0, v2}, Lba;->startActivity(Landroid/content/Intent;)V

    .line 92
    const/4 v0, 0x1

    return v0
.end method
