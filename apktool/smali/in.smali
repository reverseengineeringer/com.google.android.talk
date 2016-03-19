.class public final Lin;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final synthetic a:Lii;

.field final synthetic b:Lij;


# direct methods
.method constructor <init>(Lij;Lii;)V
    .locals 0

    .prologue
    .line 2128
    iput-object p1, p0, Lin;->b:Lij;

    iput-object p2, p0, Lin;->a:Lii;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;I)V
    .locals 1

    .prologue
    .line 1159
    iget-object v0, p0, Lin;->a:Lii;

    invoke-virtual {v0, p1, p2}, Lii;->a(Landroid/view/View;I)V

    .line 1160
    return-void
.end method

.method public a(Landroid/view/View;Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 1142
    iget-object v0, p0, Lin;->a:Lii;

    new-instance v1, Lmy;

    invoke-direct {v1, p2}, Lmy;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, p1, v1}, Lii;->a(Landroid/view/View;Lmy;)V

    .line 1144
    return-void
.end method

.method public a(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1

    .prologue
    .line 1132
    iget-object v0, p0, Lin;->a:Lii;

    invoke-virtual {v0, p1, p2}, Lii;->b(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    return v0
.end method

.method public a(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1

    .prologue
    .line 1154
    iget-object v0, p0, Lin;->a:Lii;

    invoke-virtual {v0, p1, p2, p3}, Lii;->a(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    return v0
.end method

.method public b(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    .prologue
    .line 1137
    iget-object v0, p0, Lin;->a:Lii;

    invoke-virtual {v0, p1, p2}, Lii;->d(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 1138
    return-void
.end method

.method public c(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    .prologue
    .line 1148
    iget-object v0, p0, Lin;->a:Lii;

    invoke-virtual {v0, p1, p2}, Lii;->c(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 1149
    return-void
.end method

.method public d(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    .prologue
    .line 1164
    iget-object v0, p0, Lin;->a:Lii;

    invoke-virtual {v0, p1, p2}, Lii;->a(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 1165
    return-void
.end method
