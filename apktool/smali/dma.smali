.class public final Ldma;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lilu;
.implements Lioz;


# instance fields
.field private final a:Liog;


# direct methods
.method public constructor <init>(Liog;)V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Ldma;->a:Liog;

    .line 20
    invoke-virtual {p1, p0}, Liog;->a(Lioz;)Lioz;

    .line 21
    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Lilh;Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 25
    const-class v0, Ldmb;

    invoke-virtual {p2, v0}, Lilh;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldmb;

    .line 26
    if-eqz v0, :cond_0

    .line 27
    iget-object v1, p0, Ldma;->a:Liog;

    invoke-interface {v0, p1, v1}, Ldmb;->a(Landroid/content/Context;Liog;)V

    .line 29
    :cond_0
    return-void
.end method
