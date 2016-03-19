.class public final Lhai;
.super Lhah;
.source "SourceFile"

# interfaces
.implements Lhae;


# instance fields
.field private a:Landroid/content/Intent;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 33
    invoke-direct {p0}, Lhah;-><init>()V

    .line 34
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iput-object v0, p0, Lhai;->a:Landroid/content/Intent;

    .line 35
    iget-object v0, p0, Lhai;->a:Landroid/content/Intent;

    const-string v1, "com.google.android.gms"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 36
    iget-object v0, p0, Lhai;->a:Landroid/content/Intent;

    const-string v1, "com.google.android.gms.people.smart_profile.ACTION_SHOW_PROFILE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 37
    return-void
.end method


# virtual methods
.method public synthetic a()Lhae;
    .locals 3

    .prologue
    .line 6083
    iget-object v0, p0, Lhai;->a:Landroid/content/Intent;

    const-string v1, "com.google.android.gms.people.smart_profile.APPLICATION_ID"

    const/16 v2, 0x197

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 26
    return-object p0
.end method

.method public synthetic a(I)Lhae;
    .locals 2

    .prologue
    .line 5095
    iget-object v0, p0, Lhai;->a:Landroid/content/Intent;

    const-string v1, "com.google.android.gms.people.smart_profile.THEME_COLOR_INT"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 26
    return-object p0
.end method

.method public synthetic a(Ljava/lang/String;)Lhae;
    .locals 2

    .prologue
    .line 8041
    iget-object v0, p0, Lhai;->a:Landroid/content/Intent;

    const-string v1, "com.google.android.gms.people.smart_profile.VIEWER_ACCOUNT_NAME"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 26
    return-object p0
.end method

.method public synthetic b()Lhae;
    .locals 3

    .prologue
    const/16 v1, 0x64

    .line 1160
    const/4 v0, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1161
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 1162
    iget-object v1, p0, Lhai;->a:Landroid/content/Intent;

    const-string v2, "com.google.android.gms.people.smart_profile.SLIDE_IN_PERCENTAGE"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 26
    return-object p0
.end method

.method public synthetic b(I)Lhae;
    .locals 2

    .prologue
    .line 4106
    iget-object v0, p0, Lhai;->a:Landroid/content/Intent;

    const-string v1, "com.google.android.gms.people.smart_profile.STATUS_BAR_COLOR"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 26
    return-object p0
.end method

.method public synthetic b(Ljava/lang/String;)Lhae;
    .locals 2

    .prologue
    .line 7071
    iget-object v0, p0, Lhai;->a:Landroid/content/Intent;

    const-string v1, "com.google.android.gms.people.smart_profile.QUALIFIED_ID"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 26
    return-object p0
.end method

.method public c()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lhai;->a:Landroid/content/Intent;

    return-object v0
.end method

.method public synthetic c(Ljava/lang/String;)Lhae;
    .locals 2

    .prologue
    .line 3118
    iget-object v0, p0, Lhai;->a:Landroid/content/Intent;

    const-string v1, "com.google.android.gms.people.smart_profile.DISPLAY_NAME"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 26
    return-object p0
.end method

.method public synthetic d(Ljava/lang/String;)Lhae;
    .locals 2

    .prologue
    .line 2136
    iget-object v0, p0, Lhai;->a:Landroid/content/Intent;

    const-string v1, "com.google.android.gms.people.smart_profile.AVATAR_URL"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 26
    return-object p0
.end method
