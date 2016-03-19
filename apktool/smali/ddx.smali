.class public final Lddx;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ldxv;


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/google/android/apps/hangouts/phone/BabelHomeActivity;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/hangouts/phone/BabelHomeActivity;Z)V
    .locals 0

    .prologue
    .line 761
    iput-object p1, p0, Lddx;->b:Lcom/google/android/apps/hangouts/phone/BabelHomeActivity;

    iput-boolean p2, p0, Lddx;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 764
    iget-object v0, p0, Lddx;->b:Lcom/google/android/apps/hangouts/phone/BabelHomeActivity;

    .line 1139
    iget-boolean v0, v0, Lcom/google/android/apps/hangouts/phone/BabelHomeActivity;->n:Z

    .line 764
    if-eqz v0, :cond_0

    .line 765
    iget-object v0, p0, Lddx;->b:Lcom/google/android/apps/hangouts/phone/BabelHomeActivity;

    invoke-virtual {v0}, Lcom/google/android/apps/hangouts/phone/BabelHomeActivity;->o()V

    .line 767
    iget-object v0, p0, Lddx;->b:Lcom/google/android/apps/hangouts/phone/BabelHomeActivity;

    iget-boolean v1, p0, Lddx;->a:Z

    .line 2139
    invoke-virtual {v0, v1}, Lcom/google/android/apps/hangouts/phone/BabelHomeActivity;->b(Z)V

    .line 769
    :cond_0
    return-void
.end method

.method public b()V
    .locals 0

    .prologue
    .line 774
    return-void
.end method
