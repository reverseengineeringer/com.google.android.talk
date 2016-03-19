.class final Ldaa;
.super Lcve;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Lcve;-><init>()V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 18
    sget v0, Laen;->jA:I

    return v0
.end method

.method public a(Landroid/app/Activity;)V
    .locals 3

    .prologue
    .line 33
    iget-object v0, p0, Ldaa;->a:Lbfd;

    const/16 v1, 0x9f2

    invoke-static {v0, v1}, Laal;->a(Lbfd;I)V

    .line 34
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/apps/hangouts/peoplelistv2/impl/PeopleSearchActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 35
    const-string v1, "account_id"

    iget-object v2, p0, Ldaa;->a:Lbfd;

    invoke-virtual {v2}, Lbfd;->g()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 36
    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 37
    return-void
.end method

.method public b()I
    .locals 1

    .prologue
    .line 23
    sget v0, Lfii;->j:I

    return v0
.end method

.method public c()I
    .locals 1

    .prologue
    .line 28
    const/4 v0, 0x5

    return v0
.end method

.method public d()I
    .locals 1

    .prologue
    .line 41
    const/4 v0, 0x2

    return v0
.end method

.method public e()I
    .locals 1

    .prologue
    .line 46
    const/4 v0, 0x5

    return v0
.end method
