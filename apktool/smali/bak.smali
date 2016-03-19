.class final Lbak;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lijh;


# instance fields
.field final synthetic a:Lbah;


# direct methods
.method constructor <init>(Lbah;)V
    .locals 0

    .prologue
    .line 163
    iput-object p1, p0, Lbak;->a:Lbah;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 167
    iget-object v1, p0, Lbak;->a:Lbah;

    .line 1202
    iget-object v0, v1, Lbah;->a:Ljava/lang/String;

    invoke-static {v0}, Lezm;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1399
    new-instance v3, Lkti;

    invoke-direct {v3}, Lkti;-><init>()V

    .line 1205
    iget v0, v1, Lbah;->c:I

    invoke-static {v0}, Ldvd;->e(I)Lbfd;

    move-result-object v0

    .line 1206
    invoke-static {v0}, Laen;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1208
    invoke-virtual {v0}, Lbfd;->s()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1210
    invoke-static {v0}, Lezm;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1211
    if-eqz v5, :cond_0

    .line 1213
    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1214
    iget-object v0, v1, Lbah;->a:Ljava/lang/String;

    invoke-static {v0}, Lkth;->b(Ljava/lang/Object;)Lkth;

    move-result-object v0

    .line 170
    :goto_1
    invoke-virtual {v0}, Lkth;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 171
    iget-object v0, p0, Lbak;->a:Lbah;

    .line 2047
    iget-object v0, v0, Lbah;->b:Landroid/content/Context;

    .line 173
    sget v1, Laal;->iy:I

    .line 172
    invoke-static {v0, v1, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 176
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 186
    :goto_2
    return v7

    .line 1216
    :cond_1
    invoke-virtual {v3, v0}, Lkti;->c(Ljava/lang/Object;)Lkti;

    goto :goto_0

    .line 1219
    :cond_2
    invoke-virtual {v3}, Lkti;->a()Lkth;

    move-result-object v0

    goto :goto_1

    .line 177
    :cond_3
    invoke-virtual {v0}, Lkth;->size()I

    move-result v1

    if-ne v1, v7, :cond_4

    .line 179
    iget-object v1, p0, Lbak;->a:Lbah;

    .line 180
    invoke-static {v0}, Laal;->a(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 3253
    iget-object v2, v1, Lbah;->b:Landroid/content/Context;

    iget-object v3, v1, Lbah;->b:Landroid/content/Context;

    iget v1, v1, Lbah;->c:I

    .line 4019
    new-instance v4, Landroid/content/Intent;

    const-class v5, Lcom/google/android/apps/hangouts/callerid/impl/CallerIdPromoActivity;

    invoke-direct {v4, v3, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 4020
    const-string v3, "android.intent.action.VIEW"

    invoke-virtual {v4, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 4021
    const-string v3, "account_id"

    invoke-virtual {v4, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4022
    const-string v1, "callerid_from_promo_flow"

    invoke-virtual {v4, v1, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 4023
    const-string v1, "callerid_current_sim_number"

    invoke-virtual {v4, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3253
    invoke-virtual {v2, v4}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_2

    .line 184
    :cond_4
    iget-object v1, p0, Lbak;->a:Lbah;

    .line 4047
    invoke-virtual {v1, v0}, Lbah;->a(Lkth;)V

    goto :goto_2
.end method
