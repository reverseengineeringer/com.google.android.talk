.class final Lbal;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:[Ljava/lang/String;

.field final synthetic b:Lbah;


# direct methods
.method constructor <init>(Lbah;[Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 237
    iput-object p1, p0, Lbal;->b:Lbah;

    iput-object p2, p0, Lbal;->a:[Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6

    .prologue
    .line 240
    iget-object v0, p0, Lbal;->b:Lbah;

    iget-object v1, p0, Lbal;->a:[Ljava/lang/String;

    aget-object v1, v1, p2

    .line 241
    invoke-static {v1}, Lezm;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1253
    iget-object v2, v0, Lbah;->b:Landroid/content/Context;

    iget-object v3, v0, Lbah;->b:Landroid/content/Context;

    iget v0, v0, Lbah;->c:I

    .line 2019
    new-instance v4, Landroid/content/Intent;

    const-class v5, Lcom/google/android/apps/hangouts/callerid/impl/CallerIdPromoActivity;

    invoke-direct {v4, v3, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2020
    const-string v3, "android.intent.action.VIEW"

    invoke-virtual {v4, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 2021
    const-string v3, "account_id"

    invoke-virtual {v4, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2022
    const-string v0, "callerid_from_promo_flow"

    const/4 v3, 0x0

    invoke-virtual {v4, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2023
    const-string v0, "callerid_current_sim_number"

    invoke-virtual {v4, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1253
    invoke-virtual {v2, v4}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 242
    return-void
.end method
