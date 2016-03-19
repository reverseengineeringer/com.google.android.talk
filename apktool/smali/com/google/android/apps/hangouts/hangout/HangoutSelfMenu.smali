.class public final Lcom/google/android/apps/hangouts/hangout/HangoutSelfMenu;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# instance fields
.field public final a:Lcfc;

.field public b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcgp;",
            ">;"
        }
    .end annotation
.end field

.field private c:Z

.field private final d:Lcgv;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 64
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 25
    new-instance v0, Lcgv;

    .line 1030
    invoke-direct {v0, p0}, Lcgv;-><init>(Lcom/google/android/apps/hangouts/hangout/HangoutSelfMenu;)V

    .line 25
    iput-object v0, p0, Lcom/google/android/apps/hangouts/hangout/HangoutSelfMenu;->d:Lcgv;

    .line 26
    invoke-static {}, Lcfc;->a()Lcfc;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/hangouts/hangout/HangoutSelfMenu;->a:Lcfc;

    .line 65
    return-void
.end method


# virtual methods
.method public a(Lcgn;Lhkx;Lcgw;)V
    .locals 5

    .prologue
    .line 72
    invoke-virtual {p0}, Lcom/google/android/apps/hangouts/hangout/HangoutSelfMenu;->removeAllViews()V

    .line 74
    invoke-virtual {p0}, Lcom/google/android/apps/hangouts/hangout/HangoutSelfMenu;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcin;

    invoke-static {v0, v1}, Lilh;->c(Landroid/content/Context;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    .line 75
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 76
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/google/android/apps/hangouts/hangout/HangoutSelfMenu;->b:Ljava/util/List;

    .line 77
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcin;

    .line 79
    invoke-virtual {p0}, Lcom/google/android/apps/hangouts/hangout/HangoutSelfMenu;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-interface {v0, v2, p1, p2, p3}, Lcin;->a(Landroid/content/Context;Lcgn;Lhkx;Lcgw;)Ljava/util/List;

    move-result-object v0

    .line 80
    if-eqz v0, :cond_0

    .line 81
    iget-object v2, p0, Lcom/google/android/apps/hangouts/hangout/HangoutSelfMenu;->b:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 84
    :cond_1
    iget-object v0, p0, Lcom/google/android/apps/hangouts/hangout/HangoutSelfMenu;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcgp;

    .line 87
    invoke-virtual {p0}, Lcom/google/android/apps/hangouts/hangout/HangoutSelfMenu;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    sget v4, Laal;->fU:I

    .line 89
    invoke-virtual {p0}, Lcom/google/android/apps/hangouts/hangout/HangoutSelfMenu;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 86
    invoke-virtual {v0, v3, v4, v1}, Lcgp;->a(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 85
    invoke-virtual {p0, v0}, Lcom/google/android/apps/hangouts/hangout/HangoutSelfMenu;->addView(Landroid/view/View;)V

    goto :goto_1

    .line 92
    :cond_2
    iget-boolean v0, p0, Lcom/google/android/apps/hangouts/hangout/HangoutSelfMenu;->c:Z

    .line 1144
    const-string v1, "Expected condition to be false"

    invoke-static {v1, v0}, Lhbs;->b(Ljava/lang/String;Z)V

    .line 93
    iget-object v0, p0, Lcom/google/android/apps/hangouts/hangout/HangoutSelfMenu;->a:Lcfc;

    iget-object v1, p0, Lcom/google/android/apps/hangouts/hangout/HangoutSelfMenu;->d:Lcgv;

    invoke-virtual {v0, v1}, Lcfc;->a(Lhku;)V

    .line 94
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/apps/hangouts/hangout/HangoutSelfMenu;->setVisibility(I)V

    .line 95
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/apps/hangouts/hangout/HangoutSelfMenu;->c:Z

    .line 96
    return-void
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 100
    iget-boolean v0, p0, Lcom/google/android/apps/hangouts/hangout/HangoutSelfMenu;->c:Z

    return v0
.end method

.method public b()V
    .locals 2

    .prologue
    .line 105
    iget-boolean v0, p0, Lcom/google/android/apps/hangouts/hangout/HangoutSelfMenu;->c:Z

    if-eqz v0, :cond_0

    .line 106
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/google/android/apps/hangouts/hangout/HangoutSelfMenu;->setVisibility(I)V

    .line 107
    iget-object v0, p0, Lcom/google/android/apps/hangouts/hangout/HangoutSelfMenu;->a:Lcfc;

    iget-object v1, p0, Lcom/google/android/apps/hangouts/hangout/HangoutSelfMenu;->d:Lcgv;

    invoke-virtual {v0, v1}, Lcfc;->b(Lhku;)V

    .line 108
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/apps/hangouts/hangout/HangoutSelfMenu;->c:Z

    .line 109
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/hangouts/hangout/HangoutSelfMenu;->b:Ljava/util/List;

    .line 111
    :cond_0
    return-void
.end method
