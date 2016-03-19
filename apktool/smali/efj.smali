.class public final Lefj;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/String;

.field public static final b:Ljava/lang/String;

.field public static final c:Ljava/lang/String;

.field public static final d:Ljava/lang/String;

.field public static final e:Ljava/lang/String;

.field private static f:Lefi;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    const-class v0, Lorg/chromium/net/UrlRequestContextConfig;

    .line 14
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lefj;->a:Ljava/lang/String;

    .line 15
    const-class v0, Lihv;

    .line 16
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lefj;->b:Ljava/lang/String;

    .line 17
    const-class v0, Lefg;

    .line 18
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lefj;->c:Ljava/lang/String;

    .line 19
    const-class v0, Lbwl;

    .line 20
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lefj;->d:Ljava/lang/String;

    .line 21
    const-class v0, Lorg/chromium/net/CronetEngine$Builder;

    .line 22
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lefj;->e:Ljava/lang/String;

    .line 21
    return-void
.end method

.method public static a(Landroid/content/Context;Lilh;)V
    .locals 2

    .prologue
    .line 27
    sget-object v0, Lefj;->f:Lefi;

    if-nez v0, :cond_0

    .line 28
    new-instance v0, Lefi;

    invoke-direct {v0}, Lefi;-><init>()V

    sput-object v0, Lefj;->f:Lefi;

    .line 30
    :cond_0
    const-class v0, Lorg/chromium/net/UrlRequestContextConfig;

    sget-object v1, Lefj;->f:Lefi;

    .line 31
    invoke-virtual {v1, p0}, Lefi;->c(Landroid/content/Context;)Lorg/chromium/net/UrlRequestContextConfig;

    move-result-object v1

    .line 30
    invoke-virtual {p1, v0, v1}, Lilh;->a(Ljava/lang/Class;Ljava/lang/Object;)Lilh;

    .line 32
    return-void
.end method

.method public static a(Lilh;)V
    .locals 2

    .prologue
    .line 51
    sget-object v0, Lefj;->f:Lefi;

    if-nez v0, :cond_0

    .line 52
    new-instance v0, Lefi;

    invoke-direct {v0}, Lefi;-><init>()V

    sput-object v0, Lefj;->f:Lefi;

    .line 54
    :cond_0
    const-class v0, Lbwl;

    sget-object v1, Lefj;->f:Lefi;

    .line 55
    invoke-virtual {v1}, Lefi;->a()[Lbwl;

    move-result-object v1

    .line 54
    invoke-virtual {p0, v0, v1}, Lilh;->a(Ljava/lang/Class;[Ljava/lang/Object;)Lilh;

    .line 56
    return-void
.end method

.method public static b(Landroid/content/Context;Lilh;)V
    .locals 2

    .prologue
    .line 35
    sget-object v0, Lefj;->f:Lefi;

    if-nez v0, :cond_0

    .line 36
    new-instance v0, Lefi;

    invoke-direct {v0}, Lefi;-><init>()V

    sput-object v0, Lefj;->f:Lefi;

    .line 38
    :cond_0
    const-class v0, Lihv;

    sget-object v1, Lefj;->f:Lefi;

    .line 39
    invoke-virtual {v1, p0}, Lefi;->a(Landroid/content/Context;)Lihv;

    move-result-object v1

    .line 38
    invoke-virtual {p1, v0, v1}, Lilh;->a(Ljava/lang/Class;Ljava/lang/Object;)Lilh;

    .line 40
    return-void
.end method

.method public static c(Landroid/content/Context;Lilh;)V
    .locals 2

    .prologue
    .line 43
    sget-object v0, Lefj;->f:Lefi;

    if-nez v0, :cond_0

    .line 44
    new-instance v0, Lefi;

    invoke-direct {v0}, Lefi;-><init>()V

    sput-object v0, Lefj;->f:Lefi;

    .line 46
    :cond_0
    const-class v0, Lefg;

    sget-object v1, Lefj;->f:Lefi;

    .line 47
    invoke-virtual {v1, p0}, Lefi;->b(Landroid/content/Context;)Lefg;

    move-result-object v1

    .line 46
    invoke-virtual {p1, v0, v1}, Lilh;->a(Ljava/lang/Class;Ljava/lang/Object;)Lilh;

    .line 48
    return-void
.end method

.method public static d(Landroid/content/Context;Lilh;)V
    .locals 2

    .prologue
    .line 59
    sget-object v0, Lefj;->f:Lefi;

    if-nez v0, :cond_0

    .line 60
    new-instance v0, Lefi;

    invoke-direct {v0}, Lefi;-><init>()V

    sput-object v0, Lefj;->f:Lefi;

    .line 62
    :cond_0
    const-class v1, Lorg/chromium/net/CronetEngine$Builder;

    .line 1054
    const-class v0, Lorg/chromium/net/UrlRequestContextConfig;

    invoke-static {p0, v0}, Lilh;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/net/CronetEngine$Builder;

    .line 62
    invoke-virtual {p1, v1, v0}, Lilh;->a(Ljava/lang/Class;Ljava/lang/Object;)Lilh;

    .line 64
    return-void
.end method
