.class public final Lip;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final synthetic a:Lii;

.field final synthetic b:Lil;


# direct methods
.method constructor <init>(Lil;Lii;)V
    .locals 0

    .prologue
    .line 2219
    iput-object p1, p0, Lip;->b:Lil;

    iput-object p2, p0, Lip;->a:Lii;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1260
    iget-object v0, p0, Lip;->a:Lii;

    invoke-virtual {v0, p1}, Lii;->a(Landroid/view/View;)Lni;

    move-result-object v0

    .line 1262
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lni;->a()Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Landroid/view/View;I)V
    .locals 1

    .prologue
    .line 1250
    iget-object v0, p0, Lip;->a:Lii;

    invoke-virtual {v0, p1, p2}, Lii;->a(Landroid/view/View;I)V

    .line 1251
    return-void
.end method

.method public a(Landroid/view/View;Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 1233
    iget-object v0, p0, Lip;->a:Lii;

    new-instance v1, Lmy;

    invoke-direct {v1, p2}, Lmy;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, p1, v1}, Lii;->a(Landroid/view/View;Lmy;)V

    .line 1235
    return-void
.end method

.method public a(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 1

    .prologue
    .line 1267
    iget-object v0, p0, Lip;->a:Lii;

    invoke-virtual {v0, p1, p2, p3}, Lii;->a(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result v0

    return v0
.end method

.method public a(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1

    .prologue
    .line 1223
    iget-object v0, p0, Lip;->a:Lii;

    invoke-virtual {v0, p1, p2}, Lii;->b(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    return v0
.end method

.method public a(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1

    .prologue
    .line 1245
    iget-object v0, p0, Lip;->a:Lii;

    invoke-virtual {v0, p1, p2, p3}, Lii;->a(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    return v0
.end method

.method public b(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    .prologue
    .line 1228
    iget-object v0, p0, Lip;->a:Lii;

    invoke-virtual {v0, p1, p2}, Lii;->d(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 1229
    return-void
.end method

.method public c(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    .prologue
    .line 1239
    iget-object v0, p0, Lip;->a:Lii;

    invoke-virtual {v0, p1, p2}, Lii;->c(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 1240
    return-void
.end method

.method public d(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    .prologue
    .line 1255
    iget-object v0, p0, Lip;->a:Lii;

    invoke-virtual {v0, p1, p2}, Lii;->a(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 1256
    return-void
.end method
