.class final Ldmi;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lhpw;
.implements Lilu;
.implements Lioz;


# instance fields
.field private final a:Landroid/content/Context;

.field private b:Ldmj;


# direct methods
.method constructor <init>(Landroid/content/Context;Liog;)V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Ldmi;->a:Landroid/content/Context;

    .line 26
    invoke-virtual {p2, p0}, Liog;->a(Lioz;)Lioz;

    .line 27
    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Lilh;Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 31
    const-class v0, Ldmj;

    invoke-virtual {p2, v0}, Lilh;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldmj;

    iput-object v0, p0, Ldmi;->b:Ldmj;

    .line 32
    const-class v0, Lhpu;

    invoke-virtual {p2, v0}, Lilh;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhpu;

    invoke-interface {v0, p0}, Lhpu;->a(Lhpw;)Lhpu;

    .line 33
    return-void
.end method

.method public a(ZLhpv;Lhpv;II)V
    .locals 3

    .prologue
    .line 38
    sget-object v0, Lhpv;->c:Lhpv;

    if-ne p3, v0, :cond_0

    .line 39
    iget-object v0, p0, Ldmi;->b:Ldmj;

    iget-object v1, p0, Ldmi;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Ldmj;->a(Landroid/content/Context;)V

    .line 40
    iget-object v0, p0, Ldmi;->b:Ldmj;

    iget-object v1, p0, Ldmi;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Ldmj;->b(Landroid/content/Context;)I

    move-result v0

    if-lez v0, :cond_0

    .line 41
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Ldmi;->a:Landroid/content/Context;

    const-class v2, Lcom/google/android/apps/hangouts/promo/impl/PromoActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 42
    const-string v1, "account_id"

    invoke-virtual {v0, v1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 43
    iget-object v1, p0, Ldmi;->a:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 46
    :cond_0
    return-void
.end method
