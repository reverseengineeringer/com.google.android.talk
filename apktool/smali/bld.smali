.class public Lbld;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lilu;
.implements Lioz;


# instance fields
.field public a:Landroid/content/Context;

.field public final b:Liog;


# direct methods
.method public constructor <init>(Liog;)V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lbld;->b:Liog;

    .line 24
    invoke-virtual {p1, p0}, Liog;->a(Lioz;)Lioz;

    .line 25
    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Lilh;Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 30
    iput-object p1, p0, Lbld;->a:Landroid/content/Context;

    .line 31
    return-void
.end method
