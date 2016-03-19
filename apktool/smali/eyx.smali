.class public final Leyx;
.super Lly;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/android/apps/hangouts/util/TabHostEx;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/hangouts/util/TabHostEx;)V
    .locals 0

    .prologue
    .line 50
    iput-object p1, p0, Leyx;->a:Lcom/google/android/apps/hangouts/util/TabHostEx;

    invoke-direct {p0}, Lly;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 2

    .prologue
    .line 53
    iget-object v0, p0, Leyx;->a:Lcom/google/android/apps/hangouts/util/TabHostEx;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/apps/hangouts/util/TabHostEx;->setOnTabChangedListener(Landroid/widget/TabHost$OnTabChangeListener;)V

    .line 55
    iget-object v0, p0, Leyx;->a:Lcom/google/android/apps/hangouts/util/TabHostEx;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/hangouts/util/TabHostEx;->setCurrentTab(I)V

    .line 56
    iget-object v0, p0, Leyx;->a:Lcom/google/android/apps/hangouts/util/TabHostEx;

    .line 1032
    invoke-virtual {v0, p1}, Lcom/google/android/apps/hangouts/util/TabHostEx;->a(I)V

    .line 58
    iget-object v0, p0, Leyx;->a:Lcom/google/android/apps/hangouts/util/TabHostEx;

    iget-object v1, p0, Leyx;->a:Lcom/google/android/apps/hangouts/util/TabHostEx;

    .line 2032
    iget-object v1, v1, Lcom/google/android/apps/hangouts/util/TabHostEx;->c:Landroid/widget/TabHost$OnTabChangeListener;

    .line 58
    invoke-virtual {v0, v1}, Lcom/google/android/apps/hangouts/util/TabHostEx;->setOnTabChangedListener(Landroid/widget/TabHost$OnTabChangeListener;)V

    .line 59
    return-void
.end method
