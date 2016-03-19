.class public final Layn;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lilu;
.implements Lioz;


# instance fields
.field private final a:Landroid/app/Activity;

.field private final b:Liog;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Liog;)V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Layn;->a:Landroid/app/Activity;

    .line 24
    iput-object p2, p0, Layn;->b:Liog;

    .line 25
    invoke-virtual {p2, p0}, Liog;->a(Lioz;)Lioz;

    .line 26
    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Lilh;Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 29
    const-class v0, Layo;

    invoke-virtual {p2, v0}, Lilh;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Layo;

    .line 30
    if-eqz v0, :cond_0

    .line 31
    iget-object v1, p0, Layn;->a:Landroid/app/Activity;

    iget-object v2, p0, Layn;->b:Liog;

    invoke-interface {v0, v1, v2}, Layo;->a(Landroid/app/Activity;Liog;)V

    .line 33
    :cond_0
    return-void
.end method
