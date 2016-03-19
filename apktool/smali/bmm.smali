.class public abstract Lbmm;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<H:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public c:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TH;"
        }
    .end annotation
.end field

.field public d:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Landroid/view/ViewGroup;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TH;",
            "Landroid/view/ViewGroup;",
            ")V"
        }
    .end annotation

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lbmm;->c:Ljava/lang/Object;

    .line 16
    iput-object p2, p0, Lbmm;->d:Landroid/view/ViewGroup;

    .line 17
    invoke-virtual {p0}, Lbmm;->c()V

    .line 18
    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 2

    .prologue
    .line 25
    if-eqz p1, :cond_0

    .line 26
    invoke-virtual {p0}, Lbmm;->d()V

    .line 28
    :cond_0
    if-eqz p1, :cond_2

    const/4 v0, 0x0

    .line 29
    :goto_0
    iget-object v1, p0, Lbmm;->d:Landroid/view/ViewGroup;

    if-eqz v1, :cond_1

    .line 30
    iget-object v1, p0, Lbmm;->d:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 32
    :cond_1
    return-void

    .line 28
    :cond_2
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public abstract a()Z
.end method

.method public abstract c()V
.end method

.method public abstract d()V
.end method
