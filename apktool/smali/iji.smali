.class public final Liji;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Landroid/content/Context;

.field private b:Lkog;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkog;"
        }
    .end annotation
.end field

.field private c:Lcom/google/android/libraries/social/settings/PreferenceScreen;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Liji;->a:Landroid/content/Context;

    .line 31
    const-class v0, Lika;

    invoke-static {p1, v0}, Lilh;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lika;

    .line 32
    invoke-interface {v0}, Lika;->b()Lcom/google/android/libraries/social/settings/PreferenceScreen;

    move-result-object v0

    iput-object v0, p0, Liji;->c:Lcom/google/android/libraries/social/settings/PreferenceScreen;

    .line 33
    return-void
.end method


# virtual methods
.method public a(I)Lcom/google/android/libraries/social/settings/PreferenceCategory;
    .locals 1

    .prologue
    .line 358
    iget-object v0, p0, Liji;->a:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Liji;->b(Ljava/lang/CharSequence;)Lcom/google/android/libraries/social/settings/PreferenceCategory;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/CharSequence;)Lcom/google/android/libraries/social/settings/PreferenceCategory;
    .locals 2

    .prologue
    .line 157
    new-instance v0, Lcom/google/android/libraries/social/settings/PreferenceCategory;

    iget-object v1, p0, Liji;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/google/android/libraries/social/settings/PreferenceCategory;-><init>(Landroid/content/Context;)V

    .line 158
    invoke-virtual {v0, p1}, Lcom/google/android/libraries/social/settings/PreferenceCategory;->c(Ljava/lang/CharSequence;)V

    .line 159
    return-object v0
.end method

.method public a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Lijc;
    .locals 2

    .prologue
    .line 49
    new-instance v0, Lijc;

    iget-object v1, p0, Liji;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lijc;-><init>(Landroid/content/Context;)V

    .line 50
    invoke-virtual {v0, p1}, Lijc;->c(Ljava/lang/CharSequence;)V

    .line 51
    invoke-virtual {v0, p2}, Lijc;->b(Ljava/lang/CharSequence;)V

    .line 52
    return-object v0
.end method

.method public a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/content/Intent;)Lijc;
    .locals 1

    .prologue
    .line 63
    invoke-virtual {p0, p1, p2}, Liji;->a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Lijc;

    move-result-object v0

    .line 64
    invoke-virtual {v0, p3}, Lijc;->a(Landroid/content/Intent;)V

    .line 65
    return-object v0
.end method

.method public a(Lcom/google/android/libraries/social/settings/PreferenceCategory;ILandroid/content/Intent;)V
    .locals 2

    .prologue
    .line 383
    iget-object v0, p0, Liji;->a:Landroid/content/Context;

    invoke-virtual {v0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2371
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p3}, Liji;->a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/content/Intent;)Lijc;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/libraries/social/settings/PreferenceCategory;->c(Lijc;)Z

    .line 384
    return-void
.end method

.method public b(Ljava/lang/CharSequence;)Lcom/google/android/libraries/social/settings/PreferenceCategory;
    .locals 2

    .prologue
    .line 348
    invoke-virtual {p0, p1}, Liji;->a(Ljava/lang/CharSequence;)Lcom/google/android/libraries/social/settings/PreferenceCategory;

    move-result-object v1

    .line 1408
    iget-object v0, p0, Liji;->c:Lcom/google/android/libraries/social/settings/PreferenceScreen;

    if-nez v0, :cond_0

    .line 1409
    iget-object v0, p0, Liji;->b:Lkog;

    invoke-interface {v0}, Lkog;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/social/settings/PreferenceScreen;

    iput-object v0, p0, Liji;->c:Lcom/google/android/libraries/social/settings/PreferenceScreen;

    .line 1411
    :cond_0
    iget-object v0, p0, Liji;->c:Lcom/google/android/libraries/social/settings/PreferenceScreen;

    .line 349
    invoke-virtual {v0, v1}, Lcom/google/android/libraries/social/settings/PreferenceScreen;->c(Lijc;)Z

    .line 350
    return-object v1
.end method
