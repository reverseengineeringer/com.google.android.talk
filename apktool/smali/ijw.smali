.class public final Lijw;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lika;
.implements Linw;
.implements Liny;
.implements Liow;
.implements Lioz;


# instance fields
.field private final a:Liiq;

.field private b:Lbz;

.field private c:Lijx;

.field private d:Lcom/google/android/libraries/social/settings/PreferenceScreen;


# direct methods
.method private constructor <init>(Liiq;Lijx;Liog;)V
    .locals 1

    .prologue
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    iput-object p1, p0, Lijw;->a:Liiq;

    .line 81
    invoke-static {p2}, Laen;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lijx;

    iput-object v0, p0, Lijw;->c:Lijx;

    .line 82
    invoke-virtual {p3, p0}, Liog;->a(Lioz;)Lioz;

    .line 83
    return-void
.end method

.method public constructor <init>(Liiq;Liog;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Liiq;",
            ":",
            "Lijx;",
            ">(TT;",
            "Liog;",
            ")V"
        }
    .end annotation

    .prologue
    move-object v0, p1

    .line 75
    check-cast v0, Lijx;

    invoke-direct {p0, p1, v0, p2}, Lijw;-><init>(Liiq;Lijx;Liog;)V

    .line 76
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 99
    iget-object v0, p0, Lijw;->a:Liiq;

    invoke-virtual {v0}, Liiq;->b()Lijs;

    move-result-object v0

    iget-object v1, p0, Lijw;->a:Liiq;

    iget-object v1, v1, Liiq;->a:Lill;

    .line 100
    invoke-virtual {v0, v1}, Lijs;->a(Landroid/content/Context;)Lcom/google/android/libraries/social/settings/PreferenceScreen;

    move-result-object v0

    .line 101
    iget-object v1, p0, Lijw;->a:Liiq;

    invoke-virtual {v1, v0}, Liiq;->a(Lcom/google/android/libraries/social/settings/PreferenceScreen;)V

    .line 102
    iput-object v0, p0, Lijw;->d:Lcom/google/android/libraries/social/settings/PreferenceScreen;

    .line 103
    return-void
.end method

.method public a(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 110
    if-nez p2, :cond_0

    .line 111
    iget-object v0, p0, Lijw;->a:Liiq;

    invoke-virtual {v0}, Liiq;->getChildFragmentManager()Lbg;

    move-result-object v0

    .line 112
    invoke-virtual {v0}, Lbg;->a()Lbz;

    move-result-object v0

    iput-object v0, p0, Lijw;->b:Lbz;

    .line 114
    iget-object v0, p0, Lijw;->c:Lijx;

    invoke-interface {v0}, Lijx;->a()V

    .line 116
    iget-object v0, p0, Lijw;->b:Lbz;

    invoke-virtual {v0}, Lbz;->b()I

    .line 117
    const/4 v0, 0x0

    iput-object v0, p0, Lijw;->b:Lbz;

    .line 119
    :cond_0
    return-void
.end method

.method public a(Lav;)V
    .locals 2

    .prologue
    .line 131
    iget-object v0, p0, Lijw;->b:Lbz;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lbz;->a(Lav;Ljava/lang/String;)Lbz;

    .line 132
    return-void
.end method

.method public b()Lcom/google/android/libraries/social/settings/PreferenceScreen;
    .locals 2

    .prologue
    .line 138
    iget-object v0, p0, Lijw;->d:Lcom/google/android/libraries/social/settings/PreferenceScreen;

    if-nez v0, :cond_0

    .line 139
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "PreferenceScreen cannot be accessed before OnCreateView"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 141
    :cond_0
    iget-object v0, p0, Lijw;->d:Lcom/google/android/libraries/social/settings/PreferenceScreen;

    return-object v0
.end method

.method public b(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 90
    return-void
.end method
