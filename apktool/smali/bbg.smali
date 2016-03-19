.class public final Lbbg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lilu;
.implements Liov;
.implements Lioz;


# static fields
.field private static final a:Lezv;


# instance fields
.field private b:Landroid/content/Context;

.field private c:Lilh;

.field private d:Lbcm;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const-string v0, "CallMediaTypeRefreshMixin"

    invoke-static {v0}, Lezv;->a(Ljava/lang/String;)Lezv;

    move-result-object v0

    sput-object v0, Lbbg;->a:Lezv;

    return-void
.end method

.method public constructor <init>(Liog;)V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    invoke-virtual {p1, p0}, Liog;->a(Lioz;)Lioz;

    .line 29
    return-void
.end method


# virtual methods
.method public X_()V
    .locals 6

    .prologue
    .line 40
    sget-object v0, Lbbg;->a:Lezv;

    const-string v1, "CallMediaTypeRefreshMixin.onResume"

    invoke-virtual {v0, v1}, Lezv;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 41
    iget-object v0, p0, Lbbg;->c:Lilh;

    const-class v2, Lhpu;

    invoke-virtual {v0, v2}, Lilh;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhpu;

    .line 42
    invoke-interface {v0}, Lhpu;->b()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 49
    iget-object v2, p0, Lbbg;->b:Landroid/content/Context;

    const-string v3, "babel_enable_call_media_type_refresh"

    const/4 v4, 0x1

    .line 50
    invoke-static {v2, v3, v4}, Laal;->a(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v2

    .line 54
    if-eqz v2, :cond_0

    .line 55
    iget-object v2, p0, Lbbg;->b:Landroid/content/Context;

    const-string v3, "babel_call_media_type_refresh_initial_delay_ms"

    sget-wide v4, Leea;->y:J

    .line 56
    invoke-static {v2, v3, v4, v5}, Laal;->a(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v2

    .line 60
    iget-object v4, p0, Lbbg;->d:Lbcm;

    new-instance v5, Lbbj;

    .line 61
    invoke-interface {v0}, Lhpu;->a()I

    move-result v0

    invoke-direct {v5, v0, v2, v3}, Lbbj;-><init>(IJ)V

    .line 60
    invoke-interface {v4, v5}, Lbcm;->a(Lbcn;)Lbcg;

    .line 64
    :cond_0
    sget-object v0, Lbbg;->a:Lezv;

    invoke-virtual {v0, v1}, Lezv;->c(Ljava/lang/String;)V

    .line 65
    return-void
.end method

.method public a(Landroid/content/Context;Lilh;Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 33
    iput-object p1, p0, Lbbg;->b:Landroid/content/Context;

    .line 34
    iput-object p2, p0, Lbbg;->c:Lilh;

    .line 35
    const-class v0, Lbcm;

    invoke-virtual {p2, v0}, Lilh;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbcm;

    iput-object v0, p0, Lbbg;->d:Lbcm;

    .line 36
    return-void
.end method
