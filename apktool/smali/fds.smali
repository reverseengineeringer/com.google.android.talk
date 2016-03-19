.class public final Lfds;
.super Lfdu;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/android/apps/hangouts/views/MultiLineLayout;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/hangouts/views/MultiLineLayout;)V
    .locals 0

    .prologue
    .line 72
    iput-object p1, p0, Lfds;->a:Lcom/google/android/apps/hangouts/views/MultiLineLayout;

    .line 1033
    invoke-direct {p0, p1}, Lfdu;-><init>(Lcom/google/android/apps/hangouts/views/MultiLineLayout;)V

    .line 72
    return-void
.end method


# virtual methods
.method protected a(Landroid/view/View;IIII)V
    .locals 2

    .prologue
    .line 80
    add-int v0, p2, p4

    add-int v1, p3, p5

    invoke-virtual {p1, p2, p3, v0, v1}, Landroid/view/View;->layout(IIII)V

    .line 81
    return-void
.end method
