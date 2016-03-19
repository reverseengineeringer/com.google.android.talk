.class public final Lelj;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/String;

.field public static final b:Ljava/lang/String;

.field public static final c:Ljava/lang/String;

.field private static d:Leli;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    const-class v0, Lelm;

    .line 10
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lelj;->a:Ljava/lang/String;

    .line 11
    const-class v0, Lekq;

    .line 12
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lelj;->b:Ljava/lang/String;

    .line 13
    const-class v0, Lekh;

    .line 14
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lelj;->c:Ljava/lang/String;

    .line 13
    return-void
.end method

.method public static a(Landroid/content/Context;Lilh;)V
    .locals 2

    .prologue
    .line 19
    sget-object v0, Lelj;->d:Leli;

    if-nez v0, :cond_0

    .line 20
    new-instance v0, Leli;

    invoke-direct {v0}, Leli;-><init>()V

    sput-object v0, Lelj;->d:Leli;

    .line 22
    :cond_0
    const-class v0, Lelm;

    .line 1025
    new-instance v1, Lelm;

    invoke-direct {v1, p0}, Lelm;-><init>(Landroid/content/Context;)V

    .line 22
    invoke-virtual {p1, v0, v1}, Lilh;->a(Ljava/lang/Class;Ljava/lang/Object;)Lilh;

    .line 24
    return-void
.end method

.method public static b(Landroid/content/Context;Lilh;)V
    .locals 2

    .prologue
    .line 27
    sget-object v0, Lelj;->d:Leli;

    if-nez v0, :cond_0

    .line 28
    new-instance v0, Leli;

    invoke-direct {v0}, Leli;-><init>()V

    sput-object v0, Lelj;->d:Leli;

    .line 30
    :cond_0
    const-class v0, Lekq;

    .line 2020
    new-instance v1, Lekq;

    invoke-direct {v1, p0}, Lekq;-><init>(Landroid/content/Context;)V

    .line 30
    invoke-virtual {p1, v0, v1}, Lilh;->a(Ljava/lang/Class;Ljava/lang/Object;)Lilh;

    .line 32
    return-void
.end method

.method public static c(Landroid/content/Context;Lilh;)V
    .locals 2

    .prologue
    .line 35
    sget-object v0, Lelj;->d:Leli;

    if-nez v0, :cond_0

    .line 36
    new-instance v0, Leli;

    invoke-direct {v0}, Leli;-><init>()V

    sput-object v0, Lelj;->d:Leli;

    .line 38
    :cond_0
    const-class v0, Lekh;

    .line 3015
    new-instance v1, Lekh;

    invoke-direct {v1, p0}, Lekh;-><init>(Landroid/content/Context;)V

    .line 38
    invoke-virtual {p1, v0, v1}, Lilh;->a(Ljava/lang/Class;Ljava/lang/Object;)Lilh;

    .line 40
    return-void
.end method
