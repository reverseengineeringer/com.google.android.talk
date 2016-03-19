.class final Ldgu;
.super Ldgz;
.source "SourceFile"


# instance fields
.field final a:Landroid/content/SharedPreferences;

.field final synthetic b:Ldfq;


# direct methods
.method public constructor <init>(Ldfq;Landroid/content/SharedPreferences;)V
    .locals 1

    .prologue
    .line 567
    iput-object p1, p0, Ldgu;->b:Ldfq;

    .line 568
    const-string v0, "Change API endpoint URLs"

    invoke-direct {p0, v0}, Ldgz;-><init>(Ljava/lang/String;)V

    .line 569
    iput-object p2, p0, Ldgu;->a:Landroid/content/SharedPreferences;

    .line 570
    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    .prologue
    .line 574
    invoke-static {}, Lefh;->values()[Lefh;

    move-result-object v1

    .line 575
    array-length v0, v1

    new-array v2, v0, [Ljava/lang/CharSequence;

    .line 576
    const/4 v0, 0x0

    :goto_0
    array-length v3, v1

    if-ge v0, v3, :cond_0

    .line 577
    aget-object v3, v1, v0

    invoke-virtual {v3}, Lefh;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    .line 576
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 580
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Ldgu;->b:Ldfq;

    .line 1055
    iget-object v3, v3, Ldfq;->a:Landroid/content/Context;

    .line 580
    invoke-direct {v0, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 581
    const-string v3, "Choose API to change"

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 582
    new-instance v3, Ldgv;

    invoke-direct {v3, p0, v1}, Ldgv;-><init>(Ldgu;[Lefh;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 589
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 590
    return-void
.end method
