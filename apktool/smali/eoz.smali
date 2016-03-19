.class final Leoz;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:I

.field final synthetic c:Leox;


# direct methods
.method constructor <init>(Leox;Landroid/view/View;I)V
    .locals 0

    .prologue
    .line 131
    iput-object p1, p0, Leoz;->c:Leox;

    iput-object p2, p0, Leoz;->a:Landroid/view/View;

    iput p3, p0, Leoz;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 134
    const-string v0, "Babel_SmsPromoBanner"

    const-string v1, "Banner yes clicked"

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lezi;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 135
    iget-object v0, p0, Leoz;->c:Leox;

    iget-object v1, p0, Leoz;->a:Landroid/view/View;

    iget v2, p0, Leoz;->b:I

    .line 1102
    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1103
    invoke-virtual {v0}, Leox;->a()I

    move-result v1

    .line 1173
    iget-object v3, v0, Leox;->b:Landroid/content/Context;

    const-string v4, "babel_sms_promo"

    .line 1174
    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 1175
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "messenger_banner_promo_number"

    .line 1176
    invoke-interface {v3, v4, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 1177
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1104
    iget-object v0, v0, Leox;->c:Lhba;

    invoke-interface {v0, v2}, Lhba;->a(I)Lhaw;

    move-result-object v0

    const/16 v1, 0xaf9

    invoke-interface {v0, v1}, Lhaw;->a(I)Lhax;

    move-result-object v0

    invoke-interface {v0}, Lhax;->d()V

    .line 141
    iget-object v0, p0, Leoz;->c:Leox;

    .line 2027
    iget-object v0, v0, Leox;->b:Landroid/content/Context;

    .line 142
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.google.android.apps.messaging"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 143
    if-eqz v0, :cond_0

    .line 144
    iget-object v1, p0, Leoz;->c:Leox;

    .line 3027
    iget-object v1, v1, Leox;->b:Landroid/content/Context;

    .line 144
    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 148
    :goto_0
    return-void

    .line 146
    :cond_0
    iget-object v0, p0, Leoz;->c:Leox;

    .line 4027
    iget-object v0, v0, Leox;->b:Landroid/content/Context;

    .line 146
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    sget-object v3, Leox;->a:Landroid/net/Uri;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
