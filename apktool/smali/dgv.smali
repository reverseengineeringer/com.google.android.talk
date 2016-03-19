.class final Ldgv;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:[Lefh;

.field final synthetic b:Ldgu;


# direct methods
.method constructor <init>(Ldgu;[Lefh;)V
    .locals 0

    .prologue
    .line 584
    iput-object p1, p0, Ldgv;->b:Ldgu;

    iput-object p2, p0, Ldgv;->a:[Lefh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7

    .prologue
    .line 586
    iget-object v1, p0, Ldgv;->b:Ldgu;

    iget-object v0, p0, Ldgv;->a:[Lefh;

    aget-object v2, v0, p2

    .line 1593
    iget-object v0, v1, Ldgu;->a:Landroid/content/SharedPreferences;

    iget-object v3, v2, Lefh;->f:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1595
    new-instance v3, Landroid/widget/EditText;

    iget-object v4, v1, Ldgu;->b:Ldfq;

    .line 2055
    iget-object v4, v4, Ldfq;->a:Landroid/content/Context;

    .line 1595
    invoke-direct {v3, v4}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 1596
    const/16 v4, 0x10

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setInputType(I)V

    .line 1597
    iget-object v4, v2, Lefh;->g:Liph;

    invoke-virtual {v4}, Liph;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 1598
    invoke-virtual {v2}, Lefh;->ordinal()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setId(I)V

    .line 1599
    if-eqz v0, :cond_0

    .line 1600
    invoke-virtual {v3, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1603
    :cond_0
    new-instance v4, Landroid/app/AlertDialog$Builder;

    iget-object v0, v1, Ldgu;->b:Ldfq;

    .line 3055
    iget-object v0, v0, Ldfq;->a:Landroid/content/Context;

    .line 1603
    invoke-direct {v4, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1604
    const-string v5, "Change endpoint for "

    invoke-virtual {v2}, Lefh;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {v5, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v4, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1605
    invoke-virtual {v4, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 1606
    const-string v0, "Cancel"

    new-instance v5, Ldgw;

    invoke-direct {v5, v1}, Ldgw;-><init>(Ldgu;)V

    invoke-virtual {v4, v0, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1614
    const-string v0, "Set to default"

    new-instance v5, Ldgx;

    invoke-direct {v5, v1, v2}, Ldgx;-><init>(Ldgu;Lefh;)V

    invoke-virtual {v4, v0, v5}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1629
    const-string v0, "Set it!"

    new-instance v5, Ldgy;

    invoke-direct {v5, v1, v2, v3}, Ldgy;-><init>(Ldgu;Lefh;Landroid/widget/EditText;)V

    invoke-virtual {v4, v0, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1644
    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 587
    return-void

    .line 1604
    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method
