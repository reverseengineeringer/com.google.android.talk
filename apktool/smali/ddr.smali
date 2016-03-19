.class public final Lddr;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/android/apps/hangouts/phone/BabelHomeActivity;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/hangouts/phone/BabelHomeActivity;)V
    .locals 0

    .prologue
    .line 1438
    iput-object p1, p0, Lddr;->a:Lcom/google/android/apps/hangouts/phone/BabelHomeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1441
    new-instance v0, Liaj;

    invoke-direct {v0}, Liaj;-><init>()V

    .line 1442
    invoke-virtual {v0}, Liaj;->b()Liaj;

    move-result-object v0

    const-class v1, Lcsq;

    invoke-virtual {v0, v1}, Liaj;->a(Ljava/lang/Class;)Liaj;

    move-result-object v0

    .line 1445
    iget-object v1, p0, Lddr;->a:Lcom/google/android/apps/hangouts/phone/BabelHomeActivity;

    .line 2139
    invoke-virtual {v1, v0}, Lcom/google/android/apps/hangouts/phone/BabelHomeActivity;->a(Liaj;)V

    .line 1446
    return-void
.end method
