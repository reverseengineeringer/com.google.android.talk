.class public final Liiz;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lilu;
.implements Liox;
.implements Lioz;


# instance fields
.field private a:Lija;

.field private final b:Lkog;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkog;"
        }
    .end annotation
.end field

.field private c:Lika;

.field private d:Lcom/google/android/libraries/social/settings/PreferenceScreen;

.field private e:Z


# direct methods
.method public constructor <init>(Lija;Liog;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object v1, p0, Liiz;->c:Lika;

    .line 50
    const/4 v0, 0x0

    iput-boolean v0, p0, Liiz;->e:Z

    .line 70
    iput-object p1, p0, Liiz;->a:Lija;

    .line 71
    iput-object v1, p0, Liiz;->b:Lkog;

    .line 72
    invoke-virtual {p2, p0}, Liog;->a(Lioz;)Lioz;

    .line 73
    return-void
.end method


# virtual methods
.method public a(Lijc;)Lijc;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Liiz;->d:Lcom/google/android/libraries/social/settings/PreferenceScreen;

    invoke-virtual {v0, p1}, Lcom/google/android/libraries/social/settings/PreferenceScreen;->c(Lijc;)Z

    .line 108
    return-object p1
.end method

.method public a(Landroid/content/Context;Lilh;Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 77
    const-class v0, Lika;

    invoke-virtual {p2, v0}, Lilh;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lika;

    iput-object v0, p0, Liiz;->c:Lika;

    .line 78
    return-void
.end method

.method public s_()V
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Liiz;->c:Lika;

    if-eqz v0, :cond_1

    .line 88
    iget-object v0, p0, Liiz;->c:Lika;

    invoke-interface {v0}, Lika;->b()Lcom/google/android/libraries/social/settings/PreferenceScreen;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Liiz;->d:Lcom/google/android/libraries/social/settings/PreferenceScreen;

    .line 90
    iget-boolean v0, p0, Liiz;->e:Z

    if-nez v0, :cond_0

    .line 91
    iget-object v0, p0, Liiz;->a:Lija;

    invoke-interface {v0}, Lija;->a()V

    .line 93
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Liiz;->e:Z

    .line 94
    return-void

    .line 88
    :cond_1
    iget-object v0, p0, Liiz;->b:Lkog;

    invoke-interface {v0}, Lkog;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/social/settings/PreferenceScreen;

    goto :goto_0
.end method
