.class public final Ldcx;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/google/android/apps/hangouts/permissions/impl/RationaleActivity;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/hangouts/permissions/impl/RationaleActivity;)V
    .locals 0

    .prologue
    .line 45
    iput-object p1, p0, Ldcx;->a:Lcom/google/android/apps/hangouts/permissions/impl/RationaleActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 48
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Laal;->oF:I

    if-ne v0, v1, :cond_1

    .line 49
    iget-object v1, p0, Ldcx;->a:Lcom/google/android/apps/hangouts/permissions/impl/RationaleActivity;

    iget-object v2, p0, Ldcx;->a:Lcom/google/android/apps/hangouts/permissions/impl/RationaleActivity;

    .line 1075
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 1077
    invoke-virtual {v2}, Lcom/google/android/apps/hangouts/permissions/impl/RationaleActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v4, "original_request_code"

    invoke-virtual {v0, v4, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 1078
    const-string v4, "original_request_code"

    invoke-virtual {v3, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1081
    invoke-virtual {v2}, Lcom/google/android/apps/hangouts/permissions/impl/RationaleActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v4, "permissions"

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 1082
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1083
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1084
    new-instance v6, Ldcm;

    iget-object v7, v2, Lcom/google/android/apps/hangouts/permissions/impl/RationaleActivity;->j:Ldcj;

    .line 1085
    invoke-interface {v7, v0}, Ldcj;->a(Ljava/lang/String;)Z

    move-result v7

    invoke-direct {v6, v0, v7}, Ldcm;-><init>(Ljava/lang/String;Z)V

    .line 1084
    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1087
    :cond_0
    const-string v0, "permission_results"

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v3, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 49
    invoke-virtual {v1, v8, v3}, Lcom/google/android/apps/hangouts/permissions/impl/RationaleActivity;->setResult(ILandroid/content/Intent;)V

    .line 50
    iget-object v0, p0, Ldcx;->a:Lcom/google/android/apps/hangouts/permissions/impl/RationaleActivity;

    invoke-virtual {v0}, Lcom/google/android/apps/hangouts/permissions/impl/RationaleActivity;->finish()V

    .line 59
    :goto_1
    return-void

    .line 52
    :cond_1
    iget-object v0, p0, Ldcx;->a:Lcom/google/android/apps/hangouts/permissions/impl/RationaleActivity;

    .line 53
    invoke-virtual {v0}, Lcom/google/android/apps/hangouts/permissions/impl/RationaleActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "permissions"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 54
    iget-object v1, p0, Ldcx;->a:Lcom/google/android/apps/hangouts/permissions/impl/RationaleActivity;

    .line 2037
    iget-object v1, v1, Lcom/google/android/apps/hangouts/permissions/impl/RationaleActivity;->k:Ldck;

    .line 54
    new-instance v2, Ldco;

    sget v3, Laal;->oC:I

    invoke-direct {v2, v3, v8}, Ldco;-><init>(II)V

    invoke-interface {v1, v2, v0}, Ldck;->a(Ldco;Ljava/util/List;)V

    goto :goto_1
.end method
