.class final Lejz;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Liju;
.implements Lioz;


# instance fields
.field final synthetic a:Leju;


# direct methods
.method constructor <init>(Leju;)V
    .locals 0

    .prologue
    .line 188
    iput-object p1, p0, Lejz;->a:Leju;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(IILandroid/content/Intent;)Z
    .locals 8

    .prologue
    const/4 v1, 0x1

    .line 191
    if-ne p1, v1, :cond_2

    .line 192
    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    .line 193
    const-string v0, "com.google.android.gms.people.profile.EXTRA_AVATAR_URL"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 194
    iget-object v0, p0, Lejz;->a:Leju;

    .line 1043
    iget-object v0, v0, Leju;->context:Lill;

    .line 194
    iget-object v3, p0, Lejz;->a:Leju;

    .line 2043
    iget-object v3, v3, Leju;->a:Lbfd;

    .line 2804
    sget-boolean v4, Lbff;->a:Z

    if-eqz v4, :cond_0

    .line 2807
    invoke-virtual {v3}, Lbfd;->a()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lezi;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, 0x1a

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v6, v7

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v6, "setAvatarUrl: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " avatarUrl: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2809
    :cond_0
    const-class v4, Lhpz;

    invoke-static {v0, v4}, Lilh;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhpz;

    invoke-virtual {v3}, Lbfd;->g()I

    move-result v3

    invoke-interface {v0, v3}, Lhpz;->b(I)Lhqc;

    move-result-object v0

    .line 2810
    const-string v3, "profile_photo_url"

    invoke-virtual {v0, v3, v2}, Lhqc;->b(Ljava/lang/String;Ljava/lang/String;)Lhqc;

    .line 2811
    invoke-virtual {v0}, Lhqc;->d()I

    .line 195
    iget-object v0, p0, Lejz;->a:Leju;

    .line 3043
    iget-object v0, v0, Leju;->b:Lejr;

    .line 195
    iget-object v2, p0, Lejz;->a:Leju;

    .line 4043
    iget-object v2, v2, Leju;->a:Lbfd;

    .line 195
    invoke-virtual {v2}, Lbfd;->q()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lejz;->a:Leju;

    .line 5043
    iget-object v3, v3, Leju;->a:Lbfd;

    .line 195
    invoke-virtual {v0, v2, v3}, Lejr;->a(Ljava/lang/String;Lbfd;)V

    :cond_1
    move v0, v1

    .line 199
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method
