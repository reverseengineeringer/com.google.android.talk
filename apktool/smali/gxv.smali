.class public final Lgxv;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/String;

.field public static final b:Ljava/lang/String;

.field public static final c:Ljava/lang/String;

.field private static d:Lgxu;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    const-class v0, Lgxl;

    .line 13
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lgxv;->a:Ljava/lang/String;

    .line 14
    const-class v0, Lgxm;

    .line 15
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lgxv;->b:Ljava/lang/String;

    .line 16
    const-class v0, Lgxr;

    .line 17
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lgxv;->c:Ljava/lang/String;

    .line 16
    return-void
.end method

.method public static a(Landroid/content/Context;Lilh;)V
    .locals 3

    .prologue
    .line 22
    sget-object v0, Lgxv;->d:Lgxu;

    if-nez v0, :cond_0

    .line 23
    new-instance v0, Lgxu;

    invoke-direct {v0}, Lgxu;-><init>()V

    sput-object v0, Lgxv;->d:Lgxu;

    .line 25
    :cond_0
    const-class v0, Lgxl;

    .line 1020
    new-instance v1, Lgxs;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lgxs;-><init>(Landroid/content/Context;B)V

    .line 25
    invoke-virtual {p1, v0, v1}, Lilh;->a(Ljava/lang/Class;Ljava/lang/Object;)Lilh;

    .line 27
    return-void
.end method

.method public static a(Lilh;)V
    .locals 2

    .prologue
    .line 30
    sget-object v0, Lgxv;->d:Lgxu;

    if-nez v0, :cond_0

    .line 31
    new-instance v0, Lgxu;

    invoke-direct {v0}, Lgxu;-><init>()V

    sput-object v0, Lgxv;->d:Lgxu;

    .line 33
    :cond_0
    const-class v0, Lgxm;

    .line 1025
    new-instance v1, Lgxt;

    invoke-direct {v1}, Lgxt;-><init>()V

    .line 33
    invoke-virtual {p0, v0, v1}, Lilh;->a(Ljava/lang/Class;Ljava/lang/Object;)Lilh;

    .line 35
    return-void
.end method

.method public static b(Lilh;)V
    .locals 2

    .prologue
    .line 38
    sget-object v0, Lgxv;->d:Lgxu;

    if-nez v0, :cond_0

    .line 39
    new-instance v0, Lgxu;

    invoke-direct {v0}, Lgxu;-><init>()V

    sput-object v0, Lgxv;->d:Lgxu;

    .line 41
    :cond_0
    const-class v0, Lgxr;

    .line 1030
    new-instance v1, Lgyc;

    invoke-direct {v1}, Lgyc;-><init>()V

    .line 41
    invoke-virtual {p0, v0, v1}, Lilh;->a(Ljava/lang/Class;Ljava/lang/Object;)Lilh;

    .line 43
    return-void
.end method
