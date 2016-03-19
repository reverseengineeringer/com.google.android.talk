.class public Lcom/google/android/apps/hangouts/settings/AccountSettingsActivity;
.super Lilv;
.source "SourceFile"


# instance fields
.field public j:Lhpu;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 25
    invoke-direct {p0}, Lilv;-><init>()V

    .line 27
    new-instance v0, Lhqo;

    iget-object v1, p0, Lcom/google/android/apps/hangouts/settings/AccountSettingsActivity;->B:Lipg;

    invoke-direct {v0, p0, v1}, Lhqo;-><init>(Landroid/app/Activity;Liog;)V

    iget-object v1, p0, Lcom/google/android/apps/hangouts/settings/AccountSettingsActivity;->A:Lilh;

    .line 28
    invoke-virtual {v0, v1}, Lhqo;->a(Lilh;)Lhqo;

    move-result-object v0

    invoke-virtual {v0}, Lhqo;->e()Lhqo;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/hangouts/settings/AccountSettingsActivity;->j:Lhpu;

    .line 31
    new-instance v0, Lild;

    iget-object v1, p0, Lcom/google/android/apps/hangouts/settings/AccountSettingsActivity;->B:Lipg;

    invoke-direct {v0, p0, v1}, Lild;-><init>(Lrf;Liog;)V

    .line 32
    new-instance v0, Lejj;

    iget-object v1, p0, Lcom/google/android/apps/hangouts/settings/AccountSettingsActivity;->B:Lipg;

    invoke-direct {v0, p0, p0, v1}, Lejj;-><init>(Lcom/google/android/apps/hangouts/settings/AccountSettingsActivity;Lrf;Liog;)V

    .line 38
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6

    .prologue
    .line 42
    invoke-super {p0, p1}, Lilv;->onCreate(Landroid/os/Bundle;)V

    .line 43
    sget v0, Laal;->fz:I

    invoke-virtual {p0, v0}, Lcom/google/android/apps/hangouts/settings/AccountSettingsActivity;->setContentView(I)V

    .line 45
    iget-object v0, p0, Lcom/google/android/apps/hangouts/settings/AccountSettingsActivity;->j:Lhpu;

    invoke-interface {v0}, Lhpu;->c()Lhqb;

    move-result-object v2

    .line 46
    invoke-virtual {p0}, Lcom/google/android/apps/hangouts/settings/AccountSettingsActivity;->g()Lqe;

    move-result-object v3

    .line 47
    const-string v0, "display_name"

    invoke-interface {v2, v0}, Lhqb;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 48
    const-string v1, "account_name"

    invoke-interface {v2, v1}, Lhqb;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 49
    const-string v4, "is_plus_page"

    invoke-interface {v2, v4}, Lhqb;->d(Ljava/lang/String;)Z

    move-result v2

    .line 52
    if-eqz v3, :cond_2

    .line 53
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 54
    invoke-virtual {v3, v1}, Lqe;->a(Ljava/lang/CharSequence;)V

    .line 69
    :cond_0
    :goto_0
    return-void

    .line 56
    :cond_1
    invoke-virtual {v3, v0}, Lqe;->a(Ljava/lang/CharSequence;)V

    .line 57
    if-nez v2, :cond_0

    .line 60
    invoke-static {v1}, Landroid/text/SpannableStringBuilder;->valueOf(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    .line 61
    new-instance v2, Landroid/text/style/ForegroundColorSpan;

    invoke-virtual {p0}, Lcom/google/android/apps/hangouts/settings/AccountSettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Laal;->dp:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-direct {v2, v4}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/4 v4, 0x0

    .line 62
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v5, 0x21

    .line 61
    invoke-virtual {v0, v2, v4, v1, v5}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 63
    invoke-virtual {v3, v0}, Lqe;->b(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 67
    :cond_2
    if-eqz v2, :cond_3

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    :goto_1
    invoke-virtual {p0, v0}, Lcom/google/android/apps/hangouts/settings/AccountSettingsActivity;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_3
    move-object v0, v1

    goto :goto_1
.end method
